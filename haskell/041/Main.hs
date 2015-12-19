{-
    ProjectEuler 041
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.10.2
    `ghc Main.hs -o bin/main`
-}

module Main where

import Control.Monad
import Control.Monad.ST
import Data.Array.ST
import Data.Array.Unboxed
import Data.List

main :: IO ()
main =
    let isPrimeArr = sieveBelow 10000000
        cs = [1000..9999] ++ [1000000..9999999]
    in print $ last [n | n <- cs, isPrimeArr ! n, isPandigital (show n)]

isPandigital :: String -> Bool
isPandigital s = sort s == take (length s) ['1'..]

sieveBelow :: Int -> UArray Int Bool
sieveBelow n
    | n <= 0    = listArray (0, 0) [False]
    | otherwise = runSTUArray $ do
        table <- newArray (0, n - 1) True
        writeArray table 0 False
        writeArray table 1 False
        loop table 2 (floor . sqrt . fromIntegral $ n - 1)
        return table
    where
        loop :: STUArray s Int Bool -> Int -> Int -> ST s ()
        loop table p end = when (p <= end) $ do
            isPrime <- readArray table p
            when isPrime $ fill table (p * p) p (n - 1)
            loop table (p + 1) end
        fill :: STUArray s Int Bool -> Int -> Int -> Int -> ST s ()
        fill table i step end = when (i <= end) $ do
            writeArray table i False
            fill table (i + step) step end

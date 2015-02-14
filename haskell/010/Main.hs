{-
    ProjectEuler 010
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main -O2`
-}

module Main where

import Control.Monad
import Control.Monad.ST
import Data.Array.ST
import Data.Array.Unboxed
import Data.List

main :: IO ()
main = print $ calcTotal (sieveBelow 2000000)

calcTotal :: UArray Int Bool -> Int
calcTotal table = let (start, end) = bounds table in loop start end 0
    where
        loop :: Int -> Int -> Int -> Int
        loop n end total
            | n > end   = total
            | otherwise =
                if table ! n then
                    loop (n + 1) end (total + n)
                else
                    loop (n + 1) end total


sieveBelow :: Int -> UArray Int Bool
sieveBelow n
    | n <= 0    = listArray (0, 0) [False]
    | otherwise = runSTUArray $ do
        table <- newArray (0, n - 1) True :: ST s (STUArray s Int Bool)
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

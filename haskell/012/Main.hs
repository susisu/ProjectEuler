{-
    ProjectEuler 012
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc -O2 Main.hs -o bin/main`
-}

module Main where

import Control.Monad.ST
import Data.Array.ST
import Data.Array.Unboxed

main :: IO ()
main = let n = calc 1 in print $ n * (n + 1) `div` 2

calc :: Int -> Int
calc n = if numDivs n >= 500 then n else calc (n + 1)

numDivs :: Int -> Int
numDivs n = prod - 1
    where
        prod :: Int
        prod = let (start, end) = bounds divs in loop start end 1
            where
                loop :: Int -> Int -> Int -> Int
                loop i end p = if i > end then p else loop (i + 1) end (p * divs ! i)

        divs :: UArray Int Int
        divs = runSTUArray $ do
            let (a, b) = if n `mod` 2 == 0 then (n `div` 2, n + 1) else (n, (n + 1) `div` 2)
                m = max a b
            array <- newArray (2, m) 1
            accum array a 2
            accum array b 2
            return array

        accum :: STUArray s Int Int -> Int -> Int -> ST s ()
        accum _ 1 _   = return ()
        accum arr n i =
            if n `mod` i == 0 then do
                c <- readArray arr i
                writeArray arr i (c + 1)
                accum arr (n `div` i) i
            else accum arr n (i + 1)

-- a bit slower with -O2

--main :: IO ()
--main = let t = calc 1 in print t

--calc :: Int -> Int
--calc n = let t = n * (n + 1) `div` 2 in if numDivs t >= 500 then t else calc (n + 1)

--numDivs :: Int -> Int
--numDivs n = if r * r == n then itr 1 else itr 1 - 1
--    where
--        r :: Int
--        r = ceiling $ sqrt (fromIntegral n)
--        itr :: Int -> Int
--        itr i
--            | i < r     = if n `mod` i == 0 then 2 + itr (i + 1) else itr (i + 1)
--            | otherwise = 0

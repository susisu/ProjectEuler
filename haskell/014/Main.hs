{-
    ProjectEuler 014
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
main = print $ calc 1000000

calc :: Int -> Int
calc s = runST $ do
    memo <- newArray (2, s - 1) 0
    itr 1 0 0 memo
    where
        itr :: Int -> Int -> Int -> STUArray s Int Int -> ST s Int
        itr i m n memo
            | i < s = do
                c <- collatz s i memo
                if c > m then
                    itr (i + 1) c i memo
                else
                    itr (i + 1) m n memo
            | otherwise = return n

collatz :: Int -> Int -> STUArray s Int Int -> ST s Int
collatz s 1 _    = return 0
collatz s n memo =
    if n < s then do
        c <- readArray memo n
        if c == 0 then
            if n `mod` 2 == 0 then do
                c' <- collatz s (n `div` 2) memo
                writeArray memo n (c' + 1)
                return (c' + 1)
            else do
                c' <- collatz s (3 * n + 1) memo
                writeArray memo n (c' + 1)
                return (c' + 1)
        else
            return c
    else
        if n `mod` 2 == 0 then do
            c' <- collatz s (n `div` 2) memo
            return (c' + 1)
        else do
            c' <- collatz s (3 * n + 1) memo
            return (c' + 1)

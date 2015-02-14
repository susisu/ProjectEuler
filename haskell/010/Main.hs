{-
    ProjectEuler 010
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

import Control.Monad
import Control.Monad.ST
import Data.Array.ST
import Data.List

main :: IO ()
main = print . foldl' (+) 0 $ primesBelow 2000000

primesBelow :: Int -> [Int]
primesBelow n = zipFilter (tableBelow n) [1 ..]

tableBelow :: Int -> [Bool]
tableBelow n
    | n < 2     = []
    | otherwise = runST $ do
        table <- newArray (1, n - 1) True :: ST s (STUArray s Int Bool)
        writeArray table 1 False
        forM_ [2 .. n - 1] $ \ p -> do
            isPrime <- readArray table p
            when isPrime
                $ forM_ [p * p, p * p + p .. n - 1] $ \i ->
                    writeArray table i False
        getElems table

zipFilter :: [Bool] -> [a] -> [a]
zipFilter [] _ = []
zipFilter _ [] = []
zipFilter (True : cs) (x : xs)  = x : zipFilter cs xs
zipFilter (False : cs) (_ : xs) = zipFilter cs xs

{-
    ProjectEuler 026
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc -O2 Main.hs -o bin/main`
-}

module Main where

import Control.Monad.ST
import Data.Array.ST
import Data.List

main :: IO ()
main = let m = fst . foldl1' f $ zip [2 .. 999] (map calc [2 .. 999]) in print m
    where f x@(_, a) y@(_, b) = if a > b then x else y

calc :: Int -> Int
calc n = runST $ do
    let p = 10 ^ floor (logBase 10 $ fromIntegral n)
    table <- newArray (1, p * 10 - 1) (negate 1)
    itr table p 0
    where
        itr :: STUArray s Int Int -> Int -> Int -> ST s Int
        itr _ 0 _     = return 0
        itr table i c = do
            m <- readArray table i
            if m >= 0 then
                return $ c - m
            else do
                writeArray table i c
                itr table (i * 10 `mod` n) (c + 1)

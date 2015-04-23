{-
    ProjectEuler 015
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

import Data.List

main :: IO ()
main = print $ combination 40 20

combination :: Int -> Int -> Int
combination n r = foldl' (\a (b, c) -> a * b `div` c) 1 $ zip (drop r [1 .. n]) [1 .. r]

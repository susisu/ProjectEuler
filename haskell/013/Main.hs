{-
    ProjectEuler 013
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

import Data.Char
import Data.List

main :: IO ()
main = do
    contents <- readFile "./numbers.txt"
    let numbers = map read . take 100 $ lines contents :: [Integer]
        total   = foldl' (+) 0 numbers
    putStrLn $ take 10 (show total)

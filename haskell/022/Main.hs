{-
    ProjectEuler 022
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
    contents <- readFile "./names.txt"
    let names  = sort . read $ "[" ++ contents ++ "]"
        scores = zipWith (*) (map worth names) [1 ..]
    print $ foldl' (+) 0 scores
    where
        worth name = foldl' (+) 0 $ map (\c -> ord c - ord 'A' + 1) name

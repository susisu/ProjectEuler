{-
    ProjectEuler 018
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

import Data.List

main :: IO ()
main = do
    contents <- readFile "./numbers.txt"
    let numbers = map (map read . words) . take 15 $ lines contents :: [[Int]]
    print . maximum $ foldl1' descend numbers

descend :: [Int] -> [Int] -> [Int]
descend xs ys =
    let as = zipWith (+) xs ys;
        bs = zipWith (+) xs (tail ys)
    in head as : zipWith (max) (tail as ++ [0]) bs

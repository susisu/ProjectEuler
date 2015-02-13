{-
    ProjectEuler 008
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

import Data.Char

main :: IO ()
main = do
    contents <- readFile "./digits.txt"
    let digits = map digitToInt . head $ lines contents
    print $ calc 13 0 digits (length digits)

calc :: Int -> Int -> [Int] -> Int -> Int
calc n p digits l
    | l < n     = p
    | otherwise = let q = product $ take n digits in calc n (max p q) (tail digits) (l - 1)

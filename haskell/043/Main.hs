{-
    ProjectEuler 043
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.10.2
    `ghc Main.hs -o bin/main`
-}

module Main where

import Data.List

main :: IO ()
main = 
    let perms = permutations [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    in print . sum . map concatDigits $ filter test perms

primes :: [Int]
primes = [2, 3, 5, 7, 11, 13, 17]

concatDigits :: [Int] -> Int
concatDigits ds = foldl' (\acc d -> 10 * acc + d) 0 ds

test :: [Int] -> Bool
test perm =
    let d3s = map (take 3) . take 7 . tail $ tails perm
    in and $ zipWith (\n p -> concatDigits n `mod` p == 0) d3s primes

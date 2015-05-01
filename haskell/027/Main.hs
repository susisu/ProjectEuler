{-
    ProjectEuler 027
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc -O2 Main.hs -o bin/main`
-}

module Main where

import Data.List

main :: IO ()
main = print . fst $ foldl1' (\x@(_, r) y@(_, s) -> if r > s then x else y) results
    where
        formulas = [(a * b, formula a b) | a <- [-1000 .. 1000], b <- [-1000 .. 1000]]
        results  = map (\(p, f) -> (p, calc f)) formulas

calc :: (Int -> Int) -> Int
calc f = itr 0 where itr n = if isPrime (f n) then itr (n + 1) else n

formula :: Int -> Int -> Int -> Int
formula a b n = n ^ 2 + a * n + b

isPrime :: Int -> Bool
isPrime n
    | n <= 1    = False
    | otherwise = itr 2
    where
        r :: Int
        r = floor . sqrt $ fromIntegral n
        itr :: Int -> Bool
        itr m
            | m <= r =
                if n `mod` m == 0 then
                    False
                else
                    itr (m + 1)
            | otherwise = True

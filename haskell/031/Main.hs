{-
    ProjectEuler 031
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

main :: IO ()
main = print $ ways coins 200
    where coins = [200, 100, 50, 20, 10, 5, 2, 1]

ways :: [Int] -> Int -> Int
ways _ 0  = 1
ways [] _ = 0
ways coins@(c : cs) n
    | n >= c    = ways coins (n - c) + ways cs n
    | otherwise = ways cs n

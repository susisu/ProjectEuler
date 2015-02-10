{-
    ProjectEuler 001
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

main :: IO ()
main = print $ sum [n | n <- [1..999], n `mod` 3 == 0 || n `mod` 5 == 0]

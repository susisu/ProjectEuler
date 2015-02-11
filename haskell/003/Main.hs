{-
    ProjectEuler 003
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

main :: IO ()
main = print $ calc 600851475143 2

calc :: Integer -> Integer -> Integer
calc n p
    | n == 1         = p
    | n `mod` p == 0 = calc (n `div` p) p
    | otherwise      = calc n (p + 1)

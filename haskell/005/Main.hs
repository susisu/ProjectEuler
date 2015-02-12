{-
    ProjectEuler 005
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

main :: IO ()
main = print $ calc 1 20 1

calc :: Int -> Int -> Int -> Int
calc n max acc
    | n > max   = acc
    | otherwise = calc (n + 1) max (acc * (n `div` gcd acc n))

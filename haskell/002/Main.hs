{-
    ProjectEuler 002
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

main :: IO ()
main = print $ calc 1 1 4000000 0

calc :: Int -> Int -> Int -> Int -> Int
calc a b max sum
    | a <= max =
        if a `mod` 2 == 0 then
            calc b (a + b) max (sum + a)
        else
            calc b (a + b) max sum
    | otherwise = sum

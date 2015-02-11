{-
    ProjectEuler 001
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

main :: IO ()
main = print $ calc 1 999 0

calc :: Int -> Int -> Int -> Int
calc n max sum
    | n <= max =
        if n `mod` 3 == 0 || n `mod` 5 == 0 then
            calc (n + 1) max (sum + n)
        else
            calc (n + 1) max sum
    | otherwise = sum

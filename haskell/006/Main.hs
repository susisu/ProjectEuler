{-
    ProjectEuler 006
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

main :: IO ()
main = print $ calc 1 100 0 0

calc :: Int -> Int -> Int -> Int -> Int
calc n max s t =
    if n <= max then
        calc (n + 1) max (s + n) (t + n ^ 2)
    else
        s ^ 2 - t

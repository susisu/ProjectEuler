{-
    ProjectEuler 009
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

main :: IO ()
main = let ans = calc 1 2 in
    if ans < 0 then
        putStrLn "not found"
    else
        print ans

calc :: Int -> Int -> Int
calc a b
    | a > 332           = -1
    | b >= 1000 - a - b = calc (a + 1) (a + 2)
    | otherwise         =
        if 2 * a * b - 2000 * (a + b) + 1000000 == 0 then
            a * b * (1000 - a - b)
        else
            calc a (b + 1)

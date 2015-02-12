{-
    ProjectEuler 004
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

main :: IO ()
main = print $ calc 100 100 0

calc :: Int -> Int -> Int -> Int
calc x y p
    | x >= 1000 = p
    | y >= 1000 = calc (x + 1) 100 p
    | otherwise = let q = x * y in
        if isPalindrome q then
            calc x (y + 1) (max p q)
        else
            calc x (y + 1) p

isPalindrome :: (Integral a, Show a) => a -> Bool
isPalindrome n = let s = show n in s == reverse s

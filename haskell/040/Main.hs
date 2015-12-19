{-
    ProjectEuler 040
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.10.2
    `ghc Main.hs -o bin/main`
-}

module Main where

main :: IO ()
main = print . product $ map digit [10 ^ x | x <- [0..6]]

digit n =
    let ds = [10 ^ x - 10 ^ (x - 1) | x <- [1..]]
        ts = takeWhile (< n) . scanl1 (+) $ zipWith (*) ds [1..]
        p  = length ts
    in if p == 0 then n
    else let r = n - last ts - 1
             a = 10 ^ p + r `div` (p + 1)
             b = r `mod` (p + 1)
        in (a `div` 10 ^ (p - b)) `mod` 10

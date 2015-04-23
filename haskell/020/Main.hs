{-
    ProjectEuler 020
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

import Data.Char
import Data.List

main :: IO ()
main = print . foldl' (+) 0 . map digitToInt . show $ factorial 100

factorial :: Integer -> Integer
factorial n = loop n 1
    where loop n p = if n > 0 then loop (n - 1) (n * p) else p

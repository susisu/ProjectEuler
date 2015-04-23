{-
    ProjectEuler 016
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc -O2 Main.hs -o bin/main`
-}

module Main where

import Data.Char
import Data.List

main :: IO ()
main = print . foldl' (+) 0 . map digitToInt . show $ 2 ^ 1000

{-
    ProjectEuler 029
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

import qualified Data.HashSet as HS

main :: IO ()
main = print . HS.size $ HS.fromList powers
    where powers = [a ^ b | a <- [2 .. 100], b <- [2 .. 100]] :: [Integer]

{-
    ProjectEuler 032
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

import Data.List
import Control.Monad

main :: IO ()
main = print . foldl' (+) 0 . nub $ ps ++ qs
    where
        ps = do
            a <- [1 .. 9]
            b <- [1000 .. 10000 `div` a - 1]
            let c = a * b
                s = sort $ show a ++ show b ++ show c
            guard $ s == "123456789"
            return c
        qs = do
            a <- [10 .. 99]
            b <- [100 .. 10000 `div` a - 1]
            let c = a * b
                s = sort $ show a ++ show b ++ show c
            guard $ s == "123456789"
            return c

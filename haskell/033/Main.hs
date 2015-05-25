{-
    ProjectEuler 033
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

import Data.List
import Data.Ratio
import Control.Monad

main :: IO ()
main = print . denominator . foldl' (*) 1 $ xs ++ ys
    where
        xs = do
            a <- [1 .. 9]
            b <- [1 .. 9]
            c <- [1 .. 9]
            let d = a * 10 + b
                n = b * 10 + c
                r = n % d
                s = c % a
            guard $ r < 1 && r == s
            return r
        ys = do
            a <- [1 .. 9]
            b <- [1 .. 9]
            c <- [1 .. 9]
            let d = b * 10 + a
                n = c * 10 + b
                r = n % d
                s = c % a
            guard $ r < 1 && r == s
            return r

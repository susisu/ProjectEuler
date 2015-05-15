{-
    ProjectEuler 030
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc -O2 Main.hs -o bin/main`
-}

module Main where

import Data.List
import Control.Monad

main :: IO ()
main = print $ foldl' (+) 0 ns - 1
    where
        -- 9 ^ 5 = 59049
        -- For n >= 6, n * 9 ^ 5 < 10 ^ n
        ns = do
            a <- [0 .. 3] -- 6 * 9 ^ 5 = 354294
            b <- if a == 3 then [0 .. 5] else [0 .. 9]
            c <- [0 .. 9] -- maybe better: if (a, b) == (3, 5) then [0 .. 4] else [0 .. 9]
            d <- [0 .. 9]
            e <- [0 .. 9]
            f <- [0 .. 9]
            let x = foldl' (\u v -> u * 10 + v) 0 [a, b, c, d, e, f]
                y = foldl' (+) 0 $ map (^ 5) [a, b, c, d, e, f]
            guard $ x == y
            return x

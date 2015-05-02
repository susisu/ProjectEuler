{-
    ProjectEuler 028
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

main :: IO ()
main = print $ total (1001 `div` 2)
    where
        total n = 1 + itr n 0 2 1 0 + itr n 0 4 1 0 + itr n 0 6 1 0 + itr n 0 8 1 0
        itr n i d a s
            | i >= n     = s
            | otherwise = let a' = a + d in itr n (i + 1) (d + 8) a' (s + a')

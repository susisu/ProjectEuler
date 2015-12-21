{-
    ProjectEuler 042
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.10.2
    `ghc Main.hs -o bin/main`
-}

module Main where

import Data.Char

main :: IO ()
main = do
    file <- readFile "./words.txt"
    let words  = extractWords (head $ lines file)
        values = map wordValue words
    print . length $ filter isTriangle values

extractWords :: String -> [String]
extractWords []         = []
extractWords (',' : xs) = extractWords xs
extractWords ('"' : xs) = extractWords xs
extractWords s          = let (word, rest) = span (/= '"') s
                          in word : extractWords rest

wordValue :: String -> Int
wordValue s = itr 0 s
    where
        itr n []       = n
        itr n (x : xs) = itr (n + ord x - ord 'A' + 1) xs

isTriangle :: Int -> Bool
isTriangle n = let r = floor . sqrt . fromIntegral $ n * 2
               in r * (r + 1) == n * 2

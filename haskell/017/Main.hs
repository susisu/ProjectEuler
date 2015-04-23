{-
    ProjectEuler 017
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

import Data.List
import qualified Data.HashMap.Lazy as HM
import Data.Hashable (Hashable)

type HashMap = HM.HashMap

(!) :: (Eq k, Hashable k) => HashMap k v -> k -> v
(!) = (HM.!)

main :: IO ()
main = print . foldl' (+) 0 $ map intToCount [1 .. 1000]

intToCount :: Int -> Int
intToCount n
    | n < 20    = countsMap ! n
    | n < 100   = countsMap ! (n - n `mod` 10) + if n `mod` 10 == 0 then 0 else intToCount (n `mod` 10)
    | n < 1000  = countsMap ! (n `div` 100) + length "hundred" + if n `mod` 100 == 0 then 0 else length "and" + intToCount (n `mod` 100)
    | n == 1000 = length "onethousand"
    | otherwise = 0

countsMap :: HashMap Int Int
countsMap = HM.map length wordsMap

wordsMap :: HashMap Int String
wordsMap = HM.fromList [
        (1 , "one"),
        (2 , "two"),
        (3 , "three"),
        (4 , "four"),
        (5 , "five"),
        (6 , "six"),
        (7 , "seven"),
        (8 , "eight"),
        (9 , "nine"),
        (10, "ten"),
        (11, "eleven"),
        (12, "twelve"),
        (13, "thirteen"),
        (14, "fourteen"),
        (15, "fifteen"),
        (16, "sixteen"),
        (17, "seventeen"),
        (18, "eighteen"),
        (19, "nineteen"),
        (20, "twenty"),
        (30, "thirty"),
        (40, "forty"),
        (50, "fifty"),
        (60, "sixty"),
        (70, "seventy"),
        (80, "eighty"),
        (90, "ninety")
    ]

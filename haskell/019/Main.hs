{-
    ProjectEuler 019
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

main :: IO ()
main = print $ count (1900, 1) numDays days 0

data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
    deriving (Eq, Ord)

days :: [Day]
days = cycle [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday]

numDays :: [Int]
numDays = cycle [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

isLeapYear :: Int -> Bool
isLeapYear y
    | y `mod` 400 == 0 = True
    | y `mod` 100 == 0 = False
    | y `mod` 4   == 0 = True
    | otherwise        = False

count :: (Int, Int) -> [Int] -> [Day] -> Int -> Int
count (y, m) nds ds c
    | y > 2000  = c
    | otherwise =
        let day      = head ds;
            nd       = head nds + if m == 2 && isLeapYear y then 1 else 0;
            nds'     = tail nds;
            ds'      = drop nd ds;
            (y', m') = if m == 12 then (y + 1, 1) else (y, m + 1);
            c'       = if y > 1900 && day == Sunday then c + 1 else c
        in count (y', m') nds' ds' c'

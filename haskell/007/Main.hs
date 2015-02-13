{-
    ProjectEuler 007
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

main :: IO ()
main = print $ calc 2 0 10001

calc :: Int -> Int -> Int -> Int
calc n count maxCount =
    if isPrime n then
        if count + 1 == maxCount then
            n
        else
            calc (n + 1) (count + 1) maxCount
    else
        calc (n + 1) count maxCount

isPrime :: Int -> Bool
isPrime n
    | n <= 1    = False
    | otherwise = itr 2
    where
        r :: Int
        r = floor . sqrt $ fromIntegral n
        itr :: Int -> Bool
        itr m =
            if m <= r then
                if n `mod` m == 0 then
                    False
                else
                    itr (m + 1)
            else
                True

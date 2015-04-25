{-
    ProjectEuler 023
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc -O2 Main.hs -o bin/main`
-}

module Main where

import Control.Monad
import Control.Monad.ST
import Data.Array.ST
import Data.Array.Unboxed

main :: IO ()
main = print $ calcSum isWritableArr

calcSum :: UArray Int Bool -> Int
calcSum arr = itr bi 0
    where
        (bi, ei) = bounds arr
        itr i s
            | i <= ei =
                if arr ! i then
                    itr (i + 1) s
                else
                    itr (i + 1) (s + i)
            | otherwise = s

isWritableArr :: UArray Int Bool
isWritableArr = runSTUArray $ do
    table <- newArray (1, limit) False
    fill table (head abundants) abundants
    return table
    where
        limit = 28123
        halfLimit = limit `div` 2
        ns = [1 .. limit]
        abundants = map fst . filter (\(n, d) -> n < d) $ zip ns (map sumDivs ns)
        fill :: STUArray s Int Bool -> Int -> [Int] -> ST s ()
        fill table n ns
            | n < halfLimit = do
                let ss = takeWhile (<= limit) $ map (+ n) ns
                    ns' = tail ns
                forM_ ss $ \s -> writeArray table s True
                fill table (head ns') ns'
            | otherwise = return ()

sumDivs :: Int -> Int
sumDivs 1 = 0
sumDivs n = 1 + itr 2 0 + if r * r == n then r else 0
    where
        r = ceiling . sqrt $ fromIntegral n
        itr i s
            | i < r =
                if n `mod` i == 0 then
                    itr (i + 1) (s + i + n `div` i)
                else
                    itr (i + 1) s
            | otherwise = s

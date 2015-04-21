{-
    ProjectEuler 011
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

import Data.Array.Unboxed

main :: IO ()
main = do
    contents <- readFile "./numbers.txt"
    let numbers = map read . concat . map words . take 20 $ lines contents
        grid    = listArray ((0, 0), (19, 19)) numbers :: UArray (Int, Int) Int
        ans     = maximum $ map ($ grid) [vertical, horizontal, diagonalA, diagonalB] 
    print ans
    where
        vertical :: UArray (Int, Int) Int -> Int
        vertical grid = let ((x, y), (x', y')) = bounds grid in
            maximum $ do
                u <- [x .. x']
                v <- [y .. y' - 3]
                return $ grid ! (u, v) * grid ! (u, v + 1) * grid ! (u, v + 2) * grid ! (u, v + 3)
        horizontal :: UArray (Int, Int) Int -> Int
        horizontal grid = let ((x, y), (x', y')) = bounds grid in
            maximum $ do
                u <- [x .. x' - 3]
                v <- [y .. y']
                return $ grid ! (u, v) * grid ! (u + 1, v) * grid ! (u + 2, v) * grid ! (u + 3, v)
        diagonalA :: UArray (Int, Int) Int -> Int
        diagonalA grid = let ((x, y), (x', y')) = bounds grid in
            maximum $ do
                u <- [x .. x' - 3]
                v <- [y .. y' - 3]
                return $ grid ! (u, v) * grid ! (u + 1, v + 1) * grid ! (u + 2, v + 2) * grid ! (u + 3, v + 3)
        diagonalB :: UArray (Int, Int) Int -> Int
        diagonalB grid = let ((x, y), (x', y')) = bounds grid in
            maximum $ do
                u <- [x + 3.. x']
                v <- [y .. y' - 3]
                return $ grid ! (u, v) * grid ! (u - 1, v + 1) * grid ! (u - 2, v + 2) * grid ! (u - 3, v + 3)

{-
    ProjectEuler 039
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.10.2
    `ghc Main.hs -o bin/main`
-}

module Main where

--import Data.Function
--import Data.List

--main :: IO ()
--main = print . fst . foldl' max (0, 0) $ map ((,) <$> id <*> (length . solve)) [1..1000]
--    where
--        max x@(_, n) y@(_, m) | n >= m    = x
--                              | otherwise = y
--solve :: Integral a => a -> [(a, a, a)]
--solve p =
--    [(a, b, c) |
--        a <- [1..floor $ fromIntegral p / (2 + sqrt 2)],
--        b <- [a..(p - a) `div` 2],
--        let c = p - a - b;
--            x = a * a + b * b;
--            y = floor . sqrt $ fromIntegral x,
--        c == y && x == y * y]

import Data.Array.ST
import Data.Array.Unboxed

main :: IO ()
main = print $ seek 0 0 a
    where
        (a, b) = bounds numSolutions
        seek m mi i | i == b    = mi
                    | otherwise =
                        let n = numSolutions ! i in
                        if n > m then seek n i (i + 1)
                        else seek m mi (i + 1)

numSolutions :: UArray Int Int
numSolutions = runSTUArray $ do
    table <- newArray (3, 1000) 0 
    sequence $ do
        a <- [1..333]
        b <- [a..(1000 - a) `div` 2]
        let csq = a * a + b * b
            c   = floor . sqrt $ fromIntegral csq
            p   = a + b + c
        if p <= 1000 && c * c == csq then return $ do
            n <- readArray table p
            writeArray table p (n + 1)
        else return $ return ()
    return table

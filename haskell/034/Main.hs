{-
    ProjectEuler 034
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

import Data.Array.Unboxed
import Data.Char

main :: IO ()
main = print . sum $ filter test [10..7 * fact 9]

-- 9! = 362880
fact :: Integral a => a -> a
fact n = fact' 1 n
    where
        fact' p 0 = p
        fact' p n = fact' (p * n) (n - 1)

facts :: UArray Int Int
facts = listArray (0, 9) $ map fact [0..9]

test :: Int -> Bool
test n = itr 0 n
    where
        itr s 0 = s == n
        itr s m = itr (s + facts ! (m `mod` 10)) (m `div` 10)

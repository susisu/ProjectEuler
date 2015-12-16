{-
    ProjectEuler 037
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.10.2
    `ghc Main.hs -o bin/main`
-}

module Main where

main :: IO ()
main =
    let ps = [p | p <- [10..],
            isPrime p, 
            all isPrime . takeWhile (> 0) $ iterate truncateL2R p,
            all isPrime . takeWhile (> 0) $ iterate truncateR2L p]
    in print . sum $ take 11 ps


truncateL2R :: Integral a => a -> a
truncateL2R n =
    let p = 10 ^ (floor . logBase 10 $ fromIntegral n)
    in n `mod` p

truncateR2L :: Integral a => a -> a
truncateR2L n = n `div` 10

isPrime :: Integral a => a -> Bool
isPrime 1 = False
isPrime n = null [d | d <- [2..floor . sqrt $ fromIntegral n], n `mod` d == 0]

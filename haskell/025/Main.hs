{-
    ProjectEuler 025
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

-- orderFibonacci n >= 999
-- n * logBase 10 phi_plus - logBase 10 5 / 2 >= 999
-- n >= (999 - logBase 10 5 / 2) / logBase 10 phi_plus
main :: IO ()
main = let n = ceiling $ (999 + logBase 10 5 / 2) / logBase 10 phi_plus
    in print n

phi_plus :: Double
phi_plus = (1 + sqrt 5) / 2

{-
main :: IO ()
main = let log10Fs = zip [1 ..] (map orderFibonacci [1 ..])
    in print . fst . head $ dropWhile (\(_, x) -> x < 999) log10Fs

phi_plus :: Double
phi_plus = (1 + sqrt 5) / 2

-- abs phi_minus < 1
--phi_minus :: Double
--phi_minus = (1 - sqrt 5) / 2

--fibonacci :: Int -> Int
--fibonacci n = round $ (phi_plus ** (fromIntegral n) - phi_minus ** (fromIntegral n)) / sqrt 5

orderFibonacci :: Int -> Int
orderFibonacci 1 = 1
orderFibonacci n = floor $ (fromIntegral n) * logBase 10 phi_plus - logBase 10 5 / 2
-}

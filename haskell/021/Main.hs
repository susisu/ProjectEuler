{-
    ProjectEuler 012
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

main :: IO ()
main = print $ itr 10000 2 0
    where
        itr n i s
            | i < n =
                let d = sumDivs i in
                if d /= i && sumDivs d == i then
                    itr n (i + 1) (s + i)
                else
                    itr n (i + 1) s
            | otherwise = s

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

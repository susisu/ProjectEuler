{-
    ProjectEuler 036
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.10.2
    `ghc Main.hs -o bin/main`
-}

module Main where

main :: IO ()
main =
    let f = (&&) <$> isPalindromic 2 <*> isPalindromic 10
    in print . sum $ filter f [1..1000000 - 1]

logIntBase :: (Integral a, Integral b, Integral c) => a -> b -> c
logIntBase base n = floor . logBase (fromIntegral base) $ fromIntegral n

isPalindromic :: Integral a => a -> a -> Bool
isPalindromic base n =
    let p  = logIntBase base n + 1
        ns = take p . map (`mod` base) $ iterate (`div` base) n
    in ns == reverse ns

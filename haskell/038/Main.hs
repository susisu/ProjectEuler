{-
    ProjectEuler 038
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.10.2
    `ghc Main.hs -o bin/main`
-}

module Main where

import Data.List
import Data.Maybe

main :: IO ()
main =
    let cs = [1] ++ [100 `div` 4..999 `div` 4]
            ++ [100..333] ++ [10000 `div` 2..99999 `div` 2]
        xs = catMaybes $ map test cs
    in case xs of
        []    -> putStrLn "not found"
        _ : _ -> putStrLn $ last xs

pandigital :: String -> Maybe String
pandigital str =
    if sort str == "123456789" then Just str
    else Nothing

test :: Int -> Maybe String
test n =
    let ss = map show . zipWith (*) [1..9] $ repeat n
        scan s l []       | l == 9    = pandigital s
                          | otherwise = Nothing
        scan s l (x : xs) | l == 9    = pandigital s
                          | l > 9     = Nothing
                          | otherwise = scan (s ++ x) (l + length x) xs
    in scan "" 0 ss

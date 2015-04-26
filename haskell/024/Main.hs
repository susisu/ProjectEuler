{-
    ProjectEuler 024
    Haskell / Main.hs
    copyright (c) 2015 Susisu

    GHC 7.8.3
    `ghc Main.hs -o bin/main`
-}

module Main where

import Data.List

main :: IO ()
main = let perm = foldl' (>>=) (Just [9, 8 .. 0]) (replicate (1000000 - 1) nextPermutation)
    in case perm of
        Nothing -> putStrLn "no permutation found"
        Just p  -> putStrLn . concat . map show $ reverse p

nextPermutation :: Ord a => [a] -> Maybe [a]
nextPermutation [] = Nothing
nextPermutation xs = do
    let os = False : zipWith (>) xs (tail xs)
    (ys, zs) <- split os xs []
    let (us, vs) = span (> head zs) ys
    return $ init us ++ (head zs : vs) ++ (last us : tail zs)
    where
        split [] _ _                   = Nothing
        split (False : os) (x : xs) ys = split os xs (x : ys)
        split (True : _) xs ys         = Just (ys, xs)

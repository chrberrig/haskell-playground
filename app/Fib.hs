module Fib where

import qualified Data.Map as Map

type M = Map.Map Integer Integer
type Minus2 = Integer
type Minus1 = Integer
type Curind = Integer
type Maxind = Integer


fib_inner :: Integer -> M -> (Integer, M)
fib_inner 0 d = (1, d)
fib_inner 1 d = (1, d)
fib_inner n d = case Map.lookup n d of
    Just res -> (res, d)
    Nothing -> do
        let (n1, d1) = fib_inner (n-1) d
        let (n2, d2) = fib_inner (n-2) d1
        let result = n1 + n2 :: Integer
        let resultmap = Map.insert n result d2 :: M
        (result, resultmap)

fib_inner_2 :: Minus2 -> Minus1 -> Curind -> Maxind -> Integer
fib_inner_2 _ _ _ 0 = 1
fib_inner_2 _ _ _ 1 = 1
fib_inner_2 m2 m1 i n | i==n = m1 + m2
fib_inner_2 m2 m1 i n = fib_inner_2 m1 (m1 + m2) (i+1) n


fib :: Integer -> Maybe Integer
fib n = if (n >= 0) then Just result else Nothing
    where
        result = fib_inner_2 1 1 2 n
--        (result, _) = fib_inner n Map.empty



-- main :: IO ()
-- main = putStrLn "Hello, Haskell!"

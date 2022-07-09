here is some text in the lhs file $math$ and $\alpha \mathcal{C}^{2}$
\begin{code}
module Main where

fib_inner :: Int -> Int
fib_inner 0 = 1
fib_inner 1 = 1
fib_inner n = fib_inner (n-1) + fib_inner (n-2)

fib :: Int -> Maybe Int
fib n = if (n >= 0) then Just (fib_inner n) else Nothing

main :: IO ()
main = putStrLn "Hello, Haskell!"
\end{code}
here is some even more text in the lhs file

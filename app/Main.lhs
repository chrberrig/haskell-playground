here is some text in the lhs file $math$ and $\alpha \mathcal{C}^{2}$
\begin{code}
module Main where

fib :: (Integral a) => a -> a
fib 0 = 1
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

main :: IO ()
main = putStrLn "Hello, Haskell!"
\end{code}
here is some even more text in the lhs file

import Fib
import Test.HUnit
import System.Exit

test1 :: Test
test1 = TestCase (assertEqual "negative" Nothing (fib (-1)))

test2 :: Test
test2 = TestCase (assertEqual "base0" (Just 1) (fib 0))

tests :: Test
tests = TestList [
    TestLabel "test1" test1, 
    TestLabel "test2" test2, 
    TestLabel "test3" (TestCase (assertEqual "base1" (Just 1) (fib 1))), 
    TestLabel "test4" (TestCase (assertEqual "fib5" (Just 8) (fib 5)))
    ]

main :: IO ()
main = do
    cs@(Counts _ _ errs fails) <- runTestTT tests
    putStrLn (showCounts cs)
    if (errs > 0 || fails > 0) 
        then exitFailure
        else exitSuccess

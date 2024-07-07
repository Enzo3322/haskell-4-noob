multiplyNumber :: Int -> Int -> Int
multiplyNumber x y = x * y

main :: IO ()
main = do
    putStrLn "Enter first number:"
    input1 <- getLine
    putStrLn "Enter second number:"
    input2 <- getLine
    let x = read input1 :: Int
        y = read input2 :: Int
        result = multiplyNumber x y
    putStrLn $ "Result: " ++ show result
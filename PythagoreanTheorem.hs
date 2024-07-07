pythagoreanTheorem :: Float -> Float -> Float
pythagoreanTheorem a b = sqrt (a^2 + b^2)

main :: IO ()
main = do
    putStrLn "Enter the length of the first side (a):"
    inputA <- getLine
    putStrLn "Enter the length of the second side (b):"
    inputB <- getLine
    
    let a = read inputA :: Float
        b = read inputB :: Float
        c = pythagoreanTheorem a b
    
    putStrLn $ "Length of the hypotenuse (c): " ++ show c

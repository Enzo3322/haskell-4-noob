fahrenheitToCelsius :: Float -> Float
fahrenheitToCelsius f = (f - 32.0) * (5.0/9.0)

main :: IO ()
main = do
    putStrLn "Enter temperature in Fahrenheit:"
    input <- getLine
    let fahrenheit = read input :: Float
        celsius = fahrenheitToCelsius fahrenheit
    putStrLn $ "Temperature in Celsius: " ++ show celsius

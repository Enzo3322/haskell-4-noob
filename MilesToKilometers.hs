milesToKilometers :: Float -> Float
milesToKilometers miles = miles * 1.60934

main :: IO ()
main = do
    putStrLn "Enter distance in miles:"
    input <- getLine
    let miles = read input :: Float
        kilometers = milesToKilometers miles
    putStrLn $ "Distance in kilometers: " ++ show kilometers

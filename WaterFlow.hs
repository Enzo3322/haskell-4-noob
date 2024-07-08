import Text.Printf (printf)

area :: Double -> Double
area diameter = pi * (radius ^ 2)
    where radius = diameter / 2

volumeCubicMeters diameter velocity time = area diameter * velocity * time

volumeLiters :: Double -> Double
volumeLiters volumeCubicMeters = volumeCubicMeters * 1000

main :: IO ()
main = do
    putStrLn "Digite o diâmetro do tubo (em metros):"
    diameterInput <- getLine
    putStrLn "Digite a velocidade do fluxo de água (em metros por segundo):"
    velocityInput <- getLine
    putStrLn "Digite a duração do fluxo (em segundos):"
    timeInput <- getLine
    
    let diameter = read diameterInput :: Double
    let velocity = read velocityInput :: Double
    let time = read timeInput :: Double
    
    let volumeCubicMetersValue = volumeCubicMeters diameter velocity time
    let volumeLitersValue = volumeLiters volumeCubicMetersValue
    
    printf "O volume total de água que passa pelo tubo é de %.2f litros.\n" volumeLitersValue

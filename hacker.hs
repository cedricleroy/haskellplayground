{- https://www.hackerrank.com/domains/fp -}

main :: IO ()
main = return () 

-- https://www.hackerrank.com/challenges/fp-hello-world/problem
readWrite = do
    b <- readLn
    putStrLn ("Hello " ++ b)

-- https://www.hackerrank.com/challenges/fp-hello-world-n-times/problem
writeHelloNTimes 0 = return ()
writeHelloNTimes n = do
    putStrLn ("Hello World")
    writeHelloNTimes (n-1)

-- https://www.hackerrank.com/challenges/fp-list-replication/problem
replicateContentNTimes n arr = concat [replicate n v | v <- arr]


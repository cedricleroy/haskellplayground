{- Algorithms by Robert Sedgewick and Kevin Wayne -}

main :: IO ()
main = return () 

-- Exo 113
readString x = map read (words x) :: [Int]
test x
    | (x!!0 == x!!1) && (x!!1 == x!!2) = "equal!"
    | otherwise                        = "not equal"
exo113 x = test $ readString x


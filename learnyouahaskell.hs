{- http://learnyouahaskell.com/ -}

main :: IO ()
main = return () 

doubleMe x = x + x
addMe x y = x + y
doubleSmallNumber x = if x > 100 then x else x * 2
helloWorld = "hello" ++ " " ++ "world"
myList = [1,2,3,4] ++ [9,10,11,12]
thirdElement = myList !! 2
listComp = [x*2 | x <- [1..10], x*2 > 12]

listComp' :: [Integer]
listComp' = [x*2 | x <- [1..10], x*2 > 12]
doubleSmallNumber' :: Integer -> Integer
doubleSmallNumber' x = if x > 100 then x else x * 2
stuff x y = x * y + 1
zipWithTest = zipWith (stuff) [1,2,3] [4,5,6]

sumStrings = show . sum . map read . words
sumStrings' x = sum [read y | y <- words x]


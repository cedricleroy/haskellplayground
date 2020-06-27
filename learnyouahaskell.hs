{- http://learnyouahaskell.com/ -}

main :: IO ()
main = return () 

-- *** Ready, set, go! ***
successor x = succ x -- succ 9 >> 9
mini x y = min x y -- mini 9 10 >> 9
maxi x y = max x y -- maxi 9 10 >> 10

-- *** Baby's first functions ***
doubleMe x = x + x
addMe x y = x + y
doubleSmallNumber x = if x > 100 then x else x * 2

-- *** An intro to lists ***
helloWorld = "hello" ++ " " ++ "world"
myList = [1,2,3,4] ++ [9,10,11,12]
thirdElement = myList !! 2
firtElement = head myList
withoutHead = tail myList
lastElement = last myList
withoutLastElement = init myList
myListLen = length myList
myListReversed = reverse myList
myListSliced x = take x myList -- myListSliced 3 >> [1,2,3]
myListDroped x = drop x myList -- myListDroped 3 >> [4,9,10,11,12]
myListMini = minimum myList
myListMaxi = maximum myList
sumMyList = sum myList
productMyList = product myList
xInMyList x = x `elem` myList -- similar to `in` in Python

-- *** Texas ranges ***
generate1to10 = [1..10]
threeTo20byStepsOf3 = [3,6..20]
infiniteCycle = take 10 (cycle [1,2,3]) -- slice to not have infinite print
replicate10times3 = replicate 10 3

-- *** I'm a list comprehension ***
listComp :: [Integer] -- Optional type definition (inferred if omitted)
listComp = [x*2 | x <- [1..10], x*2 > 12]
severalList = [x*y | x <- [2,5,10], y <- [8,10,11], x+y > 13, x*y < 80]

-- *** Tuples ***
tuplesCanMixTypes = ("string", True, 4)
tupleTakeFirst = fst ("1st", "2nd") -- fst :: (a, b) -> a
tupleTakeSecond = snd ("1st", "2nd") -- snd :: (a, b) -> b
zipped = zip [1,2,3,4,5] [5,5,5,5,5] -- zip :: [a] -> [b] -> [(a, b)]

-- *** Typeclasses 101 ***
{- about behavior: <constraint> => ...
λ> :t (==)
λ> (==) :: Eq a => a -> a -> Bool
λ> :t (>)
λ> (>) :: Ord a => a -> a -> Bool
-}

-- To sort
doubleSmallNumber' :: Integer -> Integer
doubleSmallNumber' x = if x > 100 then x else x * 2
stuff x y = x * y + 1
zipWithTest = zipWith (stuff) [1,2,3] [4,5,6]
sumStrings = show . sum . map read . words
sumStrings' x = sum [read y | y <- words x]


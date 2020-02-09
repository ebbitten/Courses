--file ch03/Excercises
import Data.List

easyLength :: [a] -> Int
easyLength [] = 0
easyLength (_:xs) = 1 + easyLength xs

easyMean :: Fractional a => [a] -> a
easyMean [] = 0
easyMean xs = sum xs / (fromIntegral (easyLength xs))

easyPalindrome :: [a] -> [a]
easyPalindrome (x:xs) = (x : easyPalindrome xs) ++ (x:[])
easyPalindrome [] = []

isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs
 | (take half xs) == (reverse (drop half xs)) = True
 | easyLength xs == 0 = False
 | easyLength xs `mod` 2 == 1 = False
 | otherwise = False
 where half = (fromIntegral (easyLength xs)) `div` 2

compareLength xs ys
 | easyLength xs > easyLength ys = GT
 | easyLength ys > easyLength xs = LT
 | easyLength xs == easyLength ys = EQ

sortLength xs ys = sortBy compareLength xs

--interperse xs sep
interperse sep (x:[]) = (x)
interperse sep (x:xs) = (x++(sep:(interperse sep xs)))
--interperse (x:[]) sep = x

data Direction = TurnRight
  | TurnLeft
  | Straight
  deriving (Eq, Show)

data Point = Point Double Double

slope (Point x1 y1) (Point x2 y2) = (y2-y1)/(x2-x1)

findDirection (Point x1 y1) (Point x2 y2) (Point x3 y3)
  | slope (Point x1 y1) (Point x2 y2) > slope (Point x2 y2) (Point x3 y3) = TurnRight
  | slope (Point x1 y1) (Point x2 y2) < slope (Point x2 y2) (Point x3 y3) = TurnLeft
  | otherwise = Straight

point1 = Point 0 0
point2 = Point 5 5
point3 = Point 5 0

--show (findDirection point1 point2 point3)

--makeDirectionList [] = []
--makeDirectionList _:[] = []
makeDirectionList :: [Point] -> [Direction]
makeDirectionList (_:_:[]) = []
makeDirectionList (x:y:z:[]) = findDirection x y z : []
makeDirectionList (x:y:z:xs) = findDirection x y z : makeDirectionList (y:z:xs)

-- file: ch03/ListADT.hs
data List a = Cons a (List a)
    | Nil
    deriving (Show)

fromList (x:xs) = Cons x (fromList xs)
fromList []     = Nil

toList (Cons x Nil) = [x]
toList (Cons x xs)  = x : (toList xs)
--toList (x Cons [y]) = x : [y]
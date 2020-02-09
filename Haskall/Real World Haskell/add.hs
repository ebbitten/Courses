-- file: ch03/add.hs
myNot True = False
myNot False = True

sumList (x:xs) = x + sumList xs
sumList [] = 0

productList (x:xs) = x * productList xs
productList [] = 1

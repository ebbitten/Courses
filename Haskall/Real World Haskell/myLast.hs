-- file: ch02/myLast.hs
--myDrop n xs = if n <= 0 || null xs
--    then xs
--    else myDrop (n - 1)(tail xs)
myLast xs = if length xs == 1
    then head xs
    else myLast (tail xs)
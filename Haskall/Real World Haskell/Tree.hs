--file: ch03/Tree.hs
data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)
nodeb (Node _ b _) = b
nodec (Node _ _ c) = c

--simpleTree = Node "parent" (Node "left child" Empty Empty)
--    (Node "right child" Empty Empty)

treeHeight :: Tree a -> Int
treeHeight Empty = 0
treeHeight (Node _ l r) = 1 + (max (treeHeight l) (treeHeight r))

-- file: ch03/Lending.hs
lend amount balance = let reserve = 100
                          newBalance = balance - amount
    in if balance < amount
        then Nothing
        else Just newBalance

lend2 amount balance = if amount < reserve
                       then Just newBalance
                       else Nothing
    where reserve     =100
          newBalance  =balance - amount

lend3 amount balance
  | amount <= balance = Nothing
  | amount < 0.5 * reserve = Nothing
  | otherwise = Just newBalance
  where reserve = 100
  newBalance = balance - amount

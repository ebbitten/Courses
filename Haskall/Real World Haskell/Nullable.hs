-- file: ch03/Nullable.hs
data Maybe a = Just a
    | Nothing

someBool = Prelude.Just True

someString = Prelude.Just "something"
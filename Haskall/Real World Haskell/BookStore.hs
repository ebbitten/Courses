-- file: ch03/BookStore.hs
data BookInfo = Book Int String [String]
    deriving (Show)

data MagazineInfo = Magazine Int String [String]
    deriving (Show)

myInfo = Book 9780135072455 "Algebra of Programming" ["Richard Bird", "Oege de Moon"]

type CustomerID = Int
type ReviewBody = String
data BookReview = BookReview BookInfo CustomerID String
    deriving (Show)
data BetterReview = BetterReview BookInfo

type BookRecord = (BookInfo, BookReview)

data Bool = False | True

type CardHolder = String
type CardNumber = String
type Address = [String]

data BillingInfo = CreditCard CardNumber CardHolder Address
    | CashOnDelivery
    | Invoice CustomerID
    deriving (Show)

bookID (Book id title authors) = id
bookTitle (Book id title authors) = title
bookAuthors (Book id title authors) = authors

nicerID (Book id _ _ ) = id
nicerTitle (Book _ title _) = title
nicerAuthors (Book _ _ authors) = authors

data Customer = Customer {
    customerID          :: CustomerID
    , customerName      :: String
    , customerAddress   :: Address
    } deriving (Show)


customer1 = Customer 271828 "J.R. Hacker" ["255 Syntax Ct", "milpitas, CA 95134", "USA"]
customer2 = Customer {
    customerID = 271828
    , customerAddress = ["1048576 Hard Disk drive", "milpitas CA 95134", "USA"]
    , customerName = "Jane Q.  Citizen"
}
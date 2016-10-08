data BookInfo = Book Int String [String]
                deriving (Show)

data MagazineInfo = Magazine Int String [String]
                    deriving (Show)

myInfo = Book 9780135021455 "soul dev" ["jie", "soul"]

data BookReview = BookReview BookInfo CustomerID String

type CustomerID = Int
type ReviewBody = String

data BetterReview = BetterReview BookInfo CustomerID ReviewBody

type BookRecord = (BookInfo, BookReview)

type CardHolder = String
type CardNumber = String
type Address = [String]

data BillingInfo = CreditCard CardNumber CardHolder
                 | CashOnDelivey
                 | Invoice CustomerID
                   deriving (Show)


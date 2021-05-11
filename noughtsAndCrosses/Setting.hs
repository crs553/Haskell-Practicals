module Setting where

data Player = O | X deriving (Eq, Show)

data PieceType = Placed | NotPlaced deriving(Eq)

data Point = 
    OneOne | OneTwo | OneThree | 
    TwoOne | TwoTwo | TwoThree |
    ThreeOne | ThreeTwo | ThreeThree deriving (Eq)

getOppo:: Player -> Player
getOppo O = X
getOppo X = O


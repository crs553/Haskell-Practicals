module Setting where

data Player = O | X deriving (Eq, Show)

data PieceType = Placed | NotPlaced deriving(Eq)

data Point = 
    Sq11 | Sq12 | Sq13 | 
    Sq21 | Sq22 | Sq23 |
    Sq31 | Sq32 | Sq33 deriving (Eq)

data Position = Start | Plcd Point deriving (Eq)

data Piece = Piece {pos :: Maybe Point, plyr:: Player}

getOppo:: Player -> Player
getOppo O = X
getOppo X = O

placePiece :: Int -> Int -> Position
placePiece 1 1 = Plcd Sq11
placePiece 1 2 = Plcd Sq12
placePiece 1 3 = Plcd Sq13
placePiece 2 1 = Plcd Sq21
placePiece 2 2 = Plcd Sq22
placePiece 2 3 = Plcd Sq23
placePiece 3 1 = Plcd Sq31
placePiece 3 2 = Plcd Sq32
placePiece 3 3 = Plcd Sq33
placePiece _ _ = Start 


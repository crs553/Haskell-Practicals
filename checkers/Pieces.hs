module Pieces where 
    
data Player = Black | White deriving (Eq)
data PieceType = OnBoard | Taken deriving (Eq)

type Point = Int

type Piece = (Player,PieceType,Int,Int)

type PieceSet = [Piece]

type GameState = (PieceSet,Player)

opponent :: Player -> Player
opponent Black = White
opponent White = Black

boundaryCheck :: Piece -> Bool
boundaryCheck (_,_,x,y) =  x >= 1 && x <= 64 && y >= 1 && y <= 64

pieceTaken :: Piece -> Piece
pieceTaken (plyr,_,x,y) = (plyr,Taken,x,y)

isPieceTaken :: Piece -> Bool 
isPieceTaken (_,tkn,_,_) = tkn == Taken
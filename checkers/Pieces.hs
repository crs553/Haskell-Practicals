module Pieces where 
    
data Player = Black | White deriving (Eq)
data PieceType = OnBoard | Taken deriving (Eq)

type Point = Int

type Piece = (Player,PieceType,Int,Int)

type PieceSet = [Piece]

type GameState = (PieceSet,Player)


pieceTaken :: Piece -> Piece
pieceTaken (plyr,_,x,y) = (plyr,Taken,-1,-1)

isPieceTaken :: Piece -> Bool 
isPieceTaken (_,tkn,_,_) = tkn == Taken

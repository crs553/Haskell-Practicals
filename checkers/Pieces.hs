module Pieces where 
    
data Player = Black | White deriving (Eq)
data PieceType = Normal | Pawn

type Point = Int

type Piece = (Player,PieceType,Int,Int)

type PieceSet = [Piece]

type GameState = (PieceSet,Player)

opponent :: Player -> Player
opponent Black = White
opponent White = Black

boundaryCheck :: Piece -> Bool
boundaryCheck (_,_,x,y) =  x >= 1 && x <= 64 && y >= 1 && y <= 64


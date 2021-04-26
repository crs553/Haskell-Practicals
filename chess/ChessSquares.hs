module ChessSquares where

data Point a = Point {x :: Int, y :: Int} deriving (Eq, Show)

data Pieces = Pawn | Castle | Knight | Bishop | Queen | King

data Piece p = Piece {pos :: Point, typ :: Pieces} deriving (Eq, Show)
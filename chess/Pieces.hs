module Pieces where

type Point = Int -> Int

data Piece = Pawn | Castle | Knight | Bishop | Queen | King

data Player = Black | White deriving (Eq, Show)

opponent :: Player -> Player
opponent Black = White
opponent White = Black
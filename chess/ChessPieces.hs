module ChessPieces where

data Player = Black | White deriving (Eq, Show)

opponent :: Player -> Player
opponent Black = White
opponent _ = Black
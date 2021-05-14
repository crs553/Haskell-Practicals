module Initialise where

import Setting


initGame :: Player -> GameState
initGame x = GameState {pce = gtPc x, plyer = x}
    where
        gtPc _plyr = createPlacing _plyr

createPlacing :: Player -> Placing
createPlacing _plyr = replicate 5 (createPiece Start _plyr) ++ replicate 4 (createPiece Start (getOppo _plyr))

createPiece :: Position -> Player -> Piece
createPiece _pos _plyr = Piece {pos = _pos , plyr = _plyr}
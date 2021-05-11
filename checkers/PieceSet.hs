module PieceSet where 

import Pieces

pieceSetup :: Player -> Int -> Int -> Piece 
pieceSetup plyr x y = (plyr, OnBoard, x, y)


whiteSet :: PieceSet  
whiteSet = replicate 8 (pieceSetup White 0 0) 

blackSet :: PieceSet 
blackSet = replicate 9  (pieceSetup Black 0 0)
-- g = [x |x<-[1..], let ys = map (mod x) 2 in 0 `elem` ys]

gameOver :: PieceSet -> Maybe Player  
gameOver [] = Nothing 
gameOver pieces | (inSpace pieces White -1 -1)  = Just White
                | 8 == inSpace pieces Black -1 -1  = Just Black 
                | otherwise = Nothing 


inSpace :: PieceSet -> Player -> Int -> Int -> Int
inSpace ps plyr x y= length [p | p <- ps, plyr == player p && check x y p ]
    where 
        player (q,_,_,_) = q
        check x y (_,_,crx, cry) = crx == x && cry == y
        
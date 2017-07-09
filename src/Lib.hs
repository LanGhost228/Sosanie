module Lib
    ( ilos
    ) where


data Ilo = 3 | 2 | 1 deriving Show
 
ilos :: [Float] -> Ilo
ilos x
	|middle x < 0.50 = 3
	|middle x < 0.75 = 2
	|middle x <= 1.0 = 1

middle :: [Float] -> Float 
middle y = sum y / (fromIntegral $ length y)

leng [] = 0
leng x = (leng $ tail x ) + 1

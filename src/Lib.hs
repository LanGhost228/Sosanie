module Lib
    ( someFunc,
	ilososCat,
	avg,
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

data Ilosos = G1 | G2 | G3 deriving (Show,Read)
ilososCat :: [Float] -> Ilosos
ilososCat x = G3

avg x = sum x  / (fromIntegral $ length x)
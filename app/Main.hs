module Main where

import Lib

main :: IO ()
main = do
	x <- getLine
	let y = read x :: [[Float]]
	let x = map ilos y
	let y = show' x
	putStr y

show' x = concat $ map (\ y -> "- " ++ show y ++ "\n" ) x
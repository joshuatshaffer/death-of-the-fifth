
module Main (main) where

import Data.IORef

data RoomSpec = SpecSquare | SpecStart | SpecEnd

numDoors :: RoomSpec -> Int
numDoors SpecSquare = 4
numDoors SpecStart = 1
numDoors SpecEnd = 1

-- Land marks are special rooms. They should be spaced out and a maze should never contain duplicates.
-- forall x and y in a maze, isLandMark x and isLandMark y implies x /= y
isLandMark :: RoomSpec -> Bool
isLandMark SpecSquare = False
isLandMark SpecStart = True
isLandMark SpecEnd = True

-- Terminal rooms should be as far away as posible. There should be exactly two in a maze.
isTerminal :: RoomSpec -> Bool
isTerminal SpecStart = True
isTerminal SpecEnd = True
isTerminal _ = False

type RoomData = ()

data Room = Room [Room] RoomSpec (IORef RoomData)

main :: IO ()
main = putStrLn "Hello world!"
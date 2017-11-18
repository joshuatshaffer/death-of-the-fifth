module Maze where

import Data.Map

type RoomID = Int

data MSpine = MSpine RoomID [MSpine]

type RState = ()

type MState = Map RoomID RState

--data Maze = Maze (Map RoomID MSpine) MState


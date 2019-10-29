module Task where

import           Control.Exception
import           Data.List                      ( find )

type Id = Int
type Desc = String
type Tag = String

data Task = Task { _id :: Id
                 , _desc :: Desc
                 , _tags :: [Tag]
                 , _active :: Bool
                 } deriving (Show, Read)

emptyTask :: Task
emptyTask = Task { _id = 0, _desc = "", _tags = [], _active = False }

findById :: Id -> [Task] -> Maybe Task
findById id = find $ (==) id . _id
module Data.DictQueue where

data DictQueue a = DictQueue ()

extractMin :: Eq a => DictQueue a -> Maybe (a, DictQueue a)
extractMin = undefined


insert :: Eq a => DictQueue a -> a -> DictQueue a
insert = undefined

empty :: DictQueue a
empty = undefined

{-# LANGUAGE ScopedTypeVariables #-}

module Data.DictQueueSpec where

import           Data.DictQueue
import           Data.List                (foldl', unfoldr)
import           Test.Hspec
import           Test.QuickCheck.Property

spec = describe "DictQueue" $ do
  it "should behave as a queue" $ do
    property $ \(xs :: [Int]) -> unfoldr extractMin (foldl'  insert empty xs) == xs

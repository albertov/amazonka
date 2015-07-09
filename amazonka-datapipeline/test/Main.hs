-- |
-- Module      : Main
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
module Main (main) where

import Test.Tasty
import Test.AWS.DataPipeline
import Test.AWS.DataPipeline.Internal

main :: IO ()
main = defaultMain $ testGroup "DataPipeline"
    [ testGroup "tests"    tests
    , testGroup "fixtures" fixtures
    ]

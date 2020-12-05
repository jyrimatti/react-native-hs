module Test ( tests ) where

import           Distribution.TestSuite
import           Prelude                (Either (Right), IO, return, ($))



tests :: IO [Test]
tests = return [ Test succeeds ]
    where
    succeeds = TestInstance
        { run = return $ Finished Pass
        , name = "succeeds"
        , tags = []
        , options = []
        , setOption = \_ _ -> Right succeeds
        }

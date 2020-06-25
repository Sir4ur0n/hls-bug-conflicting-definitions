module BugHLS where

import Polysemy

data Lock m a where
  WithLock :: IO a -> Lock m a

makeSem ''Lock

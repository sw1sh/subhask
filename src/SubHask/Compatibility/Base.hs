{-# LANGUAGE NoRebindableSyntax #-}

module SubHask.Compatibility.Base
    where

import Data.Typeable
import qualified Prelude as P
import qualified Control.Applicative as A
import qualified Control.Monad as M
import Language.Haskell.TH

import Control.Arrow
import Control.Monad.ST
import GHC.Conc.Sync
import Text.ParserCombinators.ReadP

import SubHask.Algebra
import SubHask.Category
import SubHask.Monad
import SubHask.Internal.Prelude
import SubHask.TemplateHaskell.Monad
import SubHask.TemplateHaskell.Deriving


--------------------------------------------------------------------------------
-- monad instances

deriveAllInScope ''P.Functor        mkPreludeFunctor
-- deriveAllInScope ''A.Applicative    mkPreludeApplicative
deriveAllInScope ''M.Monad          mkPreludeMonad

--------------------------------------------------------------------------------
--

fromPreludeEq [t|TypeRep|]

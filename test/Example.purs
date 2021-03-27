module Test.Example where

import Prelude

import ConvertableOptions (class ConvertOption, class ConvertOptionsWithDefaults, convertOptionsWithDefaults)
import Data.Maybe (Maybe(..))

type All f =
  ( foo :: String
  , poly :: f String
  | Optional
  )

type Optional =
  ( bar :: Maybe Int
  )

example
  :: forall f r
   . ConvertOptionsWithDefaults (Example f) { | Optional } { | r } { | All f }
  => Functor f
  => { | r }
  -> { | All f }
example = convertOptionsWithDefaults (Example :: _ f) { bar: Nothing }

data Example (f :: Type -> Type) = Example

instance convertExampleFoo1 :: ConvertOption (Example f) "foo" Int String where
  convertOption _ _ = show

else instance convertExampleBar1 :: ConvertOption (Example f) "bar" Int (Maybe Int) where
  convertOption _ _ = Just

else instance convertExampleIdentity :: ConvertOption (Example f) option a a where
  convertOption _ _ = identity

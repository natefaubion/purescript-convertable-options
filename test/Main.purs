module Test.Main where

import Prelude

import Data.Maybe (Maybe(..))
import Effect (Effect)
import Effect.Class.Console (logShow)
import Test.Example (example)

main :: Effect Unit
main = do
  logShow $ example { foo: "ok", poly: ["ok"] }
  logShow $ example { foo: 42, poly: Just "ok" }
  logShow $ example { foo: 42, poly: ["ok"], bar: 12 }
  logShow $ example { foo: 42, poly: ["ok"], bar: 12 }
  logShow $ example { foo: 42, poly: ["ok"], bar: Nothing }

import XMonad
import XMonad.Actions.SpawnOn

myStartupHook :: X()
myStartupHook = spawnOn "4" "/usr/bin/firefox"

main :: IO()
main = xmonad $ defaultConfig {
  modMask = mod4Mask,
  startupHook = myStartupHook,
  manageHook = manageSpawn
  }
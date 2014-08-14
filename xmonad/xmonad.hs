import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Hooks.EwmhDesktops
import XMonad.Config.Desktop
import System.IO

-- initially created with help of: http://www.haskell.org/haskellwiki/Xmonad/Config_archive/John_Goerzen%27s_Configuration

myManageHook = composeAll $
    map (\name -> className =? name --> doFloat) ["Gimp","skype","Do"]

main = do
    mapM spawnPipe [ "/usr/bin/tint2"
                   , "xbindkeys"
                   , "xscreensaver"
                   , "nm-applet"
                   , "gnome-do"
                   ]

    xmonad $ ewmh desktopConfig
        { manageHook = manageDocks <+> myManageHook
                        <+> manageHook desktopConfig
        , layoutHook = avoidStruts  $  layoutHook defaultConfig
        , normalBorderColor = "grey"
        , workspaces = ["α", "β", "γ", "δ", "ε", "ζ", "η", "θ", "ι" ]
        }

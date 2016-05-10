module Sound.Tidal.GMDrums where

import Sound.Tidal.FluidSynth

gmdrums :: ControllerShape
gmdrums = ControllerShape {
  controls = [
     mCC balance_p 10,
     mCC reverb_p 91,
     mCC chorus_p 93
     ],
  latency = 0.1
  }

gdrum = (make' VI note_p) . (noteN <$>)

noteN :: String -> Int
noteN "abd" = 35
noteN "bd1" = 36
noteN "ss" = 37
noteN "as" = 38
noteN "hc" = 39
noteN "es" = 40
noteN "lft" = 41
noteN "chh" = 42
noteN "hft" = 43
noteN "phh" = 44
noteN "lt" = 45
noteN "ohh" = 46
noteN "lmt" = 47
noteN "hmt" = 48
noteN "cc1" = 49
noteN "ht" = 50
noteN "rc1" = 51
noteN "cc" = 52
noteN "rb" = 53
noteN "ta" = 54
noteN "sc" = 55
noteN "co" = 56
noteN "cc2" = 57
noteN "vi" = 58
noteN "rc2" = 59
noteN "hb" = 60
noteN "lb" = 61
noteN "mhc" = 62
noteN "ohc" = 63
noteN "lc" = 64
noteN "ht2" = 65
noteN "lt2" = 66
noteN "ha" = 67
noteN "la" = 68
noteN "ca" = 69
noteN "ma" = 70
noteN "sw" = 71
noteN "lw" = 72
noteN "sg" = 73
noteN "lg" = 74
noteN "cl" = 75
noteN "hwb" = 76
noteN "lwb" = 77
noteN "mc" = 78
noteN "oc" = 79
noteN "mt" = 80
noteN "ot" = 81
noteN _ = 0

-- general shape for stream
gmdrumsShape = toShape gmdrums

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
noteN "bd" = 36
noteN "sti" = 37
noteN "sn" = 38
noteN "cp" = 39
noteN "esn" = 40
noteN "lft" = 41
noteN "ch" = 42
noteN "hft" = 43
noteN "hh" = 44
noteN "lt" = 45
noteN "oh" = 46
noteN "lmt" = 47
noteN "hmt" = 48
noteN "cr" = 49
noteN "ht" = 50
noteN "ri" = 51
noteN "cy" = 52
noteN "be" = 53
noteN "ta" = 54
noteN "scy" = 55
noteN "cow" = 56
noteN "cr2" = 57
noteN "vib" = 58
noteN "ri2" = 59
noteN "hb" = 60
noteN "lb" = 61
noteN "mhc" = 62
noteN "ohc" = 63
noteN "lc" = 64
noteN "hti" = 65
noteN "lti" = 66
noteN "hag" = 67
noteN "lag" = 68
noteN "ca" = 69
noteN "ma" = 70
noteN "shi" = 71
noteN "lhi" = 72
noteN "sgui" = 73
noteN "lgui" = 74
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

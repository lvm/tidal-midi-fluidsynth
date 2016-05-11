module Sound.Tidal.GMInst where

import Sound.Tidal.FluidSynth

gminst :: ControllerShape
gminst = ControllerShape {
  controls = [
     mCC balance_p 10,
     mCC reverb_p 91,
     mCC chorus_p 93
     ],
  latency = 0.1
  }

-- general shape for stream
gminstShape = toShape gminst

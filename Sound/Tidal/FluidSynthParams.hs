module Sound.Tidal.FluidSynthParams where

import Sound.Tidal.Params
import Sound.Tidal.MIDI.Control
import Sound.Tidal.MIDI.Params
import Sound.Tidal.Pattern
import Sound.Tidal.Stream
import Sound.Tidal.Params

balance :: Pattern Double -> ParamPattern
balance = make' VF balance_p
balance_p = F "balance" (Just 0)

reverb :: Pattern Double -> ParamPattern
reverb = make' VF reverb_p
reverb_p = F "reverb" (Just 0)

chorus :: Pattern Double -> ParamPattern
chorus = make' VF chorus_p
chorus_p = F "chorus" (Just 0)

-- short names
fsbal  = balance
fsrev = reverb
fschor  = chorus

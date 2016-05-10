Tidal MIDI bindings for FluidSynth Percussion.

# Requirements

ghc >= 7.10  
tidal >= 0.7

### (future) installation

```shell
git clone https://github.com/lvm/tidal-midi-fluidsynth
cd tidal-midi-fluidsynth
cabal configure && cabal build && cabal install tidal-midi-fluidsynth
```

### Usage


```haskell
import Sound.Tidal.GMDrums

devices <- midiDevices
(gdr,gdrum) <- midiSetters devices "Midi Through Port-0" 3 gmdrums getNow

gdr $ gdrum "[bd(2,2), cp(1,2,1)]"
```

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

-- short names
labd = lacousticbassdrum
lbd1 = lbassdrum1
lss = lsidestick
las = lacousticsnare
lhc = lhandclap
les = lelectricsnare
llft = llowfloortom
lchh = lclosedhihat
lhft = lhighfloortom
lphh = lpedalhihat
llt = llowtom
lohh = lopenhihat
llmt = llowmidtom
lhmt = lhimidtom
lcc1 = lcrashcymbal1
lht = lhightom
lrc1 = lridecymbal1
lcc = lchinesecymbal
lrb = lridebell
lta = ltambourine
lsc = lsplashcymbal
lco = lcowbell
lcc2 = lcrashcymbal2
lvi = lvibraslap
lrc2 = lridecymbal2
lhb = lhibongo
llb = llowbongo
lmhc = lmutehiconga
lohc = lopenhiconga
llc = llowconga
lhti = lhightimbale
llti = llowtimbale
lha = lhighagogo
lla = llowagogo
lca = lcabasa
lma = lmaracas
lsw = lshortwhistle
llw = llongwhistle
lsg = lshortguiro
llg = llongguiro
lcl = lclaves
lhwb = lhiwoodblock
llwb = llowwoodblock
lmc = lmutecuica
loc = lopencuica
lmt = lmutetriangle
lot = lopentriangle

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

-- params
lacousticbassdrum :: Pattern Double -> ParamPattern
lacousticbassdrum = make' VF lacousticbassdrum_p
lacousticbassdrum_p = F "lacousticbassdrum" (Just 0)

lbassdrum1 :: Pattern Double -> ParamPattern
lbassdrum1 = make' VF lbassdrum1_p
lbassdrum1_p = F "lbassdrum1" (Just 0)

lsidestick :: Pattern Double -> ParamPattern
lsidestick = make' VF lsidestick_p
lsidestick_p = F "lsidestick" (Just 0)

lacousticsnare :: Pattern Double -> ParamPattern
lacousticsnare = make' VF lacousticsnare_p
lacousticsnare_p = F "lacousticsnare" (Just 0)

lhandclap :: Pattern Double -> ParamPattern
lhandclap = make' VF lhandclap_p
lhandclap_p = F "lhandclap" (Just 0)

lelectricsnare :: Pattern Double -> ParamPattern
lelectricsnare = make' VF lelectricsnare_p
lelectricsnare_p = F "lelectricsnare" (Just 0)

llowfloortom :: Pattern Double -> ParamPattern
llowfloortom = make' VF llowfloortom_p
llowfloortom_p = F "llowfloortom" (Just 0)

lclosedhihat :: Pattern Double -> ParamPattern
lclosedhihat = make' VF lclosedhihat_p
lclosedhihat_p = F "lclosedhihat" (Just 0)

lhighfloortom :: Pattern Double -> ParamPattern
lhighfloortom = make' VF lhighfloortom_p
lhighfloortom_p = F "lhighfloortom" (Just 0)

lpedalhihat :: Pattern Double -> ParamPattern
lpedalhihat = make' VF lpedalhihat_p
lpedalhihat_p = F "lpedalhihat" (Just 0)

llowtom :: Pattern Double -> ParamPattern
llowtom = make' VF llowtom_p
llowtom_p = F "llowtom" (Just 0)

lopenhihat :: Pattern Double -> ParamPattern
lopenhihat = make' VF lopenhihat_p
lopenhihat_p = F "lopenhihat" (Just 0)

llowmidtom :: Pattern Double -> ParamPattern
llowmidtom = make' VF llowmidtom_p
llowmidtom_p = F "llowmidtom" (Just 0)

lhimidtom :: Pattern Double -> ParamPattern
lhimidtom = make' VF lhimidtom_p
lhimidtom_p = F "lhimidtom" (Just 0)

lcrashcymbal1 :: Pattern Double -> ParamPattern
lcrashcymbal1 = make' VF lcrashcymbal1_p
lcrashcymbal1_p = F "lcrashcymbal1" (Just 0)

lhightom :: Pattern Double -> ParamPattern
lhightom = make' VF lhightom_p
lhightom_p = F "lhightom" (Just 0)

lridecymbal1 :: Pattern Double -> ParamPattern
lridecymbal1 = make' VF lridecymbal1_p
lridecymbal1_p = F "lridecymbal1" (Just 0)

lchinesecymbal :: Pattern Double -> ParamPattern
lchinesecymbal = make' VF lchinesecymbal_p
lchinesecymbal_p = F "lchinesecymbal" (Just 0)

lridebell :: Pattern Double -> ParamPattern
lridebell = make' VF lridebell_p
lridebell_p = F "lridebell" (Just 0)

ltambourine :: Pattern Double -> ParamPattern
ltambourine = make' VF ltambourine_p
ltambourine_p = F "ltambourine" (Just 0)

lsplashcymbal :: Pattern Double -> ParamPattern
lsplashcymbal = make' VF lsplashcymbal_p
lsplashcymbal_p = F "lsplashcymbal" (Just 0)

lcowbell :: Pattern Double -> ParamPattern
lcowbell = make' VF lcowbell_p
lcowbell_p = F "lcowbell" (Just 0)

lcrashcymbal2 :: Pattern Double -> ParamPattern
lcrashcymbal2 = make' VF lcrashcymbal2_p
lcrashcymbal2_p = F "lcrashcymbal2" (Just 0)

lvibraslap :: Pattern Double -> ParamPattern
lvibraslap = make' VF lvibraslap_p
lvibraslap_p = F "lvibraslap" (Just 0)

lridecymbal2 :: Pattern Double -> ParamPattern
lridecymbal2 = make' VF lridecymbal2_p
lridecymbal2_p = F "lridecymbal2" (Just 0)

lhibongo :: Pattern Double -> ParamPattern
lhibongo = make' VF lhibongo_p
lhibongo_p = F "lhibongo" (Just 0)

llowbongo :: Pattern Double -> ParamPattern
llowbongo = make' VF llowbongo_p
llowbongo_p = F "llowbongo" (Just 0)

lmutehiconga :: Pattern Double -> ParamPattern
lmutehiconga = make' VF lmutehiconga_p
lmutehiconga_p = F "lmutehiconga" (Just 0)

lopenhiconga :: Pattern Double -> ParamPattern
lopenhiconga = make' VF lopenhiconga_p
lopenhiconga_p = F "lopenhiconga" (Just 0)

llowconga :: Pattern Double -> ParamPattern
llowconga = make' VF llowconga_p
llowconga_p = F "llowconga" (Just 0)

lhightimbale :: Pattern Double -> ParamPattern
lhightimbale = make' VF lhightimbale_p
lhightimbale_p = F "lhightimbale" (Just 0)

llowtimbale :: Pattern Double -> ParamPattern
llowtimbale = make' VF llowtimbale_p
llowtimbale_p = F "llowtimbale" (Just 0)

lhighagogo :: Pattern Double -> ParamPattern
lhighagogo = make' VF lhighagogo_p
lhighagogo_p = F "lhighagogo" (Just 0)

llowagogo :: Pattern Double -> ParamPattern
llowagogo = make' VF llowagogo_p
llowagogo_p = F "llowagogo" (Just 0)

lcabasa :: Pattern Double -> ParamPattern
lcabasa = make' VF lcabasa_p
lcabasa_p = F "lcabasa" (Just 0)

lmaracas :: Pattern Double -> ParamPattern
lmaracas = make' VF lmaracas_p
lmaracas_p = F "lmaracas" (Just 0)

lshortwhistle :: Pattern Double -> ParamPattern
lshortwhistle = make' VF lshortwhistle_p
lshortwhistle_p = F "lshortwhistle" (Just 0)

llongwhistle :: Pattern Double -> ParamPattern
llongwhistle = make' VF llongwhistle_p
llongwhistle_p = F "llongwhistle" (Just 0)

lshortguiro :: Pattern Double -> ParamPattern
lshortguiro = make' VF lshortguiro_p
lshortguiro_p = F "lshortguiro" (Just 0)

llongguiro :: Pattern Double -> ParamPattern
llongguiro = make' VF llongguiro_p
llongguiro_p = F "llongguiro" (Just 0)

lclaves :: Pattern Double -> ParamPattern
lclaves = make' VF lclaves_p
lclaves_p = F "lclaves" (Just 0)

lhiwoodblock :: Pattern Double -> ParamPattern
lhiwoodblock = make' VF lhiwoodblock_p
lhiwoodblock_p = F "lhiwoodblock" (Just 0)

llowwoodblock :: Pattern Double -> ParamPattern
llowwoodblock = make' VF llowwoodblock_p
llowwoodblock_p = F "llowwoodblock" (Just 0)

lmutecuica :: Pattern Double -> ParamPattern
lmutecuica = make' VF lmutecuica_p
lmutecuica_p = F "lmutecuica" (Just 0)

lopencuica :: Pattern Double -> ParamPattern
lopencuica = make' VF lopencuica_p
lopencuica_p = F "lopencuica" (Just 0)

lmutetriangle :: Pattern Double -> ParamPattern
lmutetriangle = make' VF lmutetriangle_p
lmutetriangle_p = F "lmutetriangle" (Just 0)

lopentriangle :: Pattern Double -> ParamPattern
lopentriangle = make' VF lopentriangle_p
lopentriangle_p = F "lopentriangle" (Just 0)


-- general shape for stream
gmdrumsShape = toShape gmdrums

{- |
Module      : Audio
Description : Estruturação do Audio.
Copyright   : Pedro Figueiredo Pereira <a104082@alunos.uminho.pt>
              Jorge Ubaldo Rodrigues Ferreira <a104096@alunos.uminho.pt>

Este módulo contem o código associado ao Audio.  
-}
module Audio where

import System.Process

playMenuPrincipal :: IO (ProcessHandle)
playMenuPrincipal = spawnCommand "mpv --volume=60 --no-video --loop ../assets/audio/audio_menu.mp3"

playMenuPrincipalPause :: IO (ProcessHandle)
playMenuPrincipalPause = spawnCommand "mpv --volume=60 --no-video --pause ../assets/audio/audio_menu.mp3"

playMenuChange :: IO (ProcessHandle)
playMenuChange = spawnCommand "mpv --volume=100 --no-video ../assets/audio/audio_menuChange.mp3"

playMenuEntry :: IO (ProcessHandle)
playMenuEntry = spawnCommand "mpv --volume=80 --no-video ../assets/audio/audio_enters.mp3"

playSelecionar :: IO (ProcessHandle)
playSelecionar = spawnCommand "mpv --volume=100 --no-video ../assets/audio/audio_selecionar.mp3"

playGame :: IO (ProcessHandle)
playGame = spawnCommand "mpv --volume=70 --no-video ../assets/audio/audio_game.mp3"

playNivel1 :: IO (ProcessHandle)
playNivel1 = spawnCommand "mpv --volume=70 --no-video ../assets/audio/audio_nivel1.mp3"

playNivel2 :: IO (ProcessHandle)
playNivel2 = spawnCommand "mpv --volume=70 --no-video ../assets/audio/audio_nivel2.mp3"

playNivel3 :: IO (ProcessHandle)
playNivel3 = spawnCommand "mpv --volume=70 --no-video ../assets/audio/audio_nivel3.mp3"

playNivel4 :: IO (ProcessHandle)
playNivel4 = spawnCommand "mpv --volume=70 --no-video ../assets/audio/audio_nivel4.mp3"

playNivel5 :: IO (ProcessHandle)
playNivel5 = spawnCommand "mpv --volume=70 --no-video ../assets/audio/audio_nivel5.mp3"

playNivel6 :: IO (ProcessHandle)
playNivel6 = spawnCommand "mpv --volume=70 --no-video ../assets/audio/audio_nivel6.mp3"

playNivel7 :: IO (ProcessHandle)
playNivel7 = spawnCommand "mpv --volume=70 --no-video ../assets/audio/audio_nivel7.mp3"

playNivel8 :: IO (ProcessHandle)
playNivel8 = spawnCommand "mpv --volume=70 --no-video ../assets/audio/audio_nivel8.mp3"

playNivel9 :: IO (ProcessHandle)
playNivel9 = spawnCommand "mpv --volume=70 --no-video ../assets/audio/audio_nivel9.mp3"

playNivel10 :: IO (ProcessHandle)
playNivel10 = spawnCommand "mpv --volume=70 --no-video ../assets/audio/audio_nivel10.mp3"

killProcess :: IO (ProcessHandle)
killProcess = spawnCommand "killall mpv"
{- |
Module      : Bot
Description : Estruturação do Bot.
Copyright   : Pedro Figueiredo Pereira <a104082@alunos.uminho.pt>
              Jorge Ubaldo Rodrigues Ferreira <a104096@alunos.uminho.pt>

Este módulo contem o código associado ao Bot.  
-}
module Bot where

import LI12223
import Tarefa3_2022li1g010 ( posJogador' )

-- | Função que define o Bot.
bot1 :: Jogo -> Jogo
bot1 jogo@(Jogo (Jogador (x,y)) mapa) | verifica' (x,y-1) mapa = (Jogo (posJogador' jogo (Move Cima)) mapa)
                                      | verifica' (x-1,y) mapa = (Jogo (posJogador' jogo (Move Esquerda)) mapa)
                                      | verifica' (x+1,y) mapa = (Jogo (posJogador' jogo (Move Direita)) mapa)
                                      | verifica' (x,y+1) mapa = (Jogo (posJogador' jogo (Move Baixo)) mapa)
                                      | otherwise = jogo

-- | Função que auxilia a previsão da próxima jogada possível.
verifica' :: (Int, Int) -> Mapa -> Bool
verifica' _ (Mapa _ []) = False
verifica' (0,0) (Mapa _ ((Estrada _, (h:t)):t2)) = h == Nenhum
verifica' (0,0) (Mapa _ ((Rio _, h:t):t2)) = h == Tronco
verifica' (0,0) (Mapa _ ((Relva, (h:t)):t2)) = h == Nenhum
verifica' (x,0) (Mapa l ((terr,(h:t)):t1)) = verifica' (x-1,0) (Mapa l ((terr,t):t1))
verifica' (x,y) (Mapa l (h:t)) = verifica' (x,y-1) (Mapa l t)
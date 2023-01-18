{- |
Module      : Tarefa5_2022li1g010
Description : Deslize do mapa
Copyright   : Pedro Figueiredo Pereira <a104082@alunos.uminho.pt>
              Jorge Ubaldo Rodrigues Ferreira <a104096@alunos.uminho.pt>

Este módulo contem a resolução da Tarefa 5, a qual promove o efeito de deslize do mapa.  
-}
module Tarefa5_2022li1g010 where

import LI12223
import Tarefa2_2022li1g010

-- ** Função 'deslizaJogo'
{- | A função 'deslizaJogo' recebe um __Int__ e um __Jogo__  e dá como resultado um __Jogo__. 
    O objetivo desta função é efetuar o deslize do mapa de acordo com a geração aleatória implementada na Tarefa 2. 

@
localizajogador :: Jogo -> [Obstaculo]
localizajogador (Jogo (Jogador (x,y)) (Mapa largura linhas)) = (snd (linhas !! y)) 
@
-}

deslizaJogo :: Int -> Jogo -> Jogo
deslizaJogo numero (Jogo (Jogador (x,y)) m@(Mapa largura linhas)) = Jogo (Jogador (x,y+1)) (estendeMapa (Mapa largura (init linhas)) numero)
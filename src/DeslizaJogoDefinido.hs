{- |
Module      : DeslizaJogoDefinido_2022li1g010
Description : Estruturação do DeslizaJogoDefinido.
Copyright   : Pedro Figueiredo Pereira <a104082@alunos.uminho.pt>
              Jorge Ubaldo Rodrigues Ferreira <a104096@alunos.uminho.pt>

Este módulo contem o código associado ao DeslizaJogoDefinido.  
-}
module DeslizaJogoDefinido_2022li1g010 where

import LI12223

-- | Função que promove o deslize do jogo.
deslizaJogoDefinido :: Jogo -> Jogo
deslizaJogoDefinido (Jogo (Jogador (x,y)) m@(Mapa largura linhas)) = Jogo (Jogador (x,y+1)) $ tiraLinhaAux m

-- | Função que retira uma linha do mapa.
tiraLinhaAux :: Mapa -> Mapa
tiraLinhaAux m@(Mapa largura linhas) = (Mapa largura (last linhas : init linhas))
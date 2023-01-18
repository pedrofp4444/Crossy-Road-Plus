{- |
Module      : Personalizar
Description : Design e funcionamento na Loja
Copyright   : Pedro Figueiredo Pereira <a104082@alunos.uminho.pt>
              Jorge Ubaldo Rodrigues Ferreira <a104096@alunos.uminho.pt>

Este módulo contem a todo o funcionamento e aparência na Loja.  
-}
module Personalizar_2022li1g010 where

import LI12223
import Tarefa3_2022li1g010

-- | Desenho da Loja.
lojaEx = Jogo (Jogador (6,8)) (Mapa 24 [(Loja, [Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede]),
                                        (Loja, [Parede, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Parede]),
                                        (Loja, [Parede, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Parede]),
                                        (Loja, [Parede, Nenhum, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Nenhum, Parede]),
                                        (Loja, [Parede, Nenhum, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Nenhum, Parede]),
                                        (Loja, [Parede, Nenhum, Parede, Nenhum, Nenhum, Portal, Nenhum, Nenhum, Parede, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Parede, Nenhum, Nenhum, Portal, Nenhum, Nenhum, Parede, Nenhum, Parede]),
                                        (Loja, [Parede, Nenhum, Parede, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Parede, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Parede, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Parede, Nenhum, Parede]),
                                        (Loja, [Parede, Nenhum, Parede, Parede, Parede, Nenhum, Parede, Parede, Parede, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Parede, Parede, Parede, Nenhum, Parede, Parede, Parede, Nenhum, Parede]),
                                        (Loja, [Parede, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Parede]),
                                        (Loja, [Parede, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Parede]),
                                        (Loja, [Parede, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Parede]),
                                        (Loja, [Parede, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Parede]),
                                        (Loja, [Parede, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Portal, Portal, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Parede]),
                                        (Loja, [Parede, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Parede]),
                                        (Loja, [Parede, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Parede]),
                                        (Loja, [Parede, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Parede]),
                                        (Loja, [Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede, Parede])
                                       ])

-- | Função que define o movimento do jogador na Loja.
posJogadorLoja :: Jogo -> Jogada -> Jogador
posJogadorLoja jogo@(Jogo (Jogador (x,y)) (Mapa largura linhas)) Parado = if ((localizajogador jogo) !! x == Tronco)
                                                                          then (Jogador ((x + localizavelocidade jogo),y))
                                                                          else posjogadorLojaAux jogo Parado

posJogadorLoja jogo@(Jogo (Jogador (x,y)) (Mapa largura linhas)) (Move Cima) = if ((localizajogador jogo) !! x == Tronco) && ((snd(linhas !! (y-1))) !! x) == Parede
                                                                               then (Jogador ((x + localizavelocidade jogo),y)) 
                                                                               else posjogadorLojaAux jogo (Move Cima) 

posJogadorLoja jogo@(Jogo (Jogador (x,y)) (Mapa largura linhas)) (Move Baixo) = if ((localizajogador jogo) !! x == Tronco) && ((snd(linhas !! (y+1))) !! x) == Parede
                                                                                then (Jogador ((x + localizavelocidade jogo),y))  
                                                                                else posjogadorLojaAux jogo (Move Baixo) 
posJogadorLoja jogo@(Jogo (Jogador (x,y)) (Mapa largura linhas)) (Move Direita) = if ((localizajogador jogo) !! x == Tronco) 
                                                                                  then (Jogador ((x + 1 + localizavelocidade jogo),y)) 
                                                                                  else posjogadorLojaAux jogo (Move Direita) 
                                                                                    
posJogadorLoja jogo@(Jogo (Jogador (x,y)) (Mapa largura linhas)) (Move Esquerda) = if ((localizajogador jogo) !! x == Tronco) 
                                                                                   then (Jogador ((x - 1 + localizavelocidade jogo),y))  
                                                                                   else posjogadorLojaAux jogo (Move Esquerda)

-- | Função auxiliar para movimento do jogador na Loja.
posjogadorLojaAux :: Jogo -> Jogada -> Jogador
posjogadorLojaAux (Jogo (Jogador (x,y)) (Mapa largura linhas)) Parado = Jogador (x,y)
posjogadorLojaAux (Jogo (Jogador (x,y)) (Mapa largura linhas)) (Move Cima) = if y == 0  || ((snd(linhas !! (y-1))) !! x) == Parede
                                                                      then Jogador (x,y)
                                                                      else Jogador (x,y-1)

posjogadorLojaAux (Jogo (Jogador (x,y)) (Mapa largura linhas)) (Move Baixo) = if (y) == ((length linhas)-1) || ((snd(linhas !! (y+1))) !! x) == Parede
                                                                              then Jogador (x,y) 
                                                                              else Jogador (x,y + 1) 

posjogadorLojaAux (Jogo (Jogador (x,y)) (Mapa largura linhas)) (Move Esquerda) = if x == 0 || ((snd(linhas !! (y))) !! (x-1)) == Parede
                                                                          then Jogador (x,y) 
                                                                          else Jogador (x - 1,y)  

posjogadorLojaAux (Jogo (Jogador (x,y)) (Mapa largura linhas)) (Move Direita) = if x == (largura -1) || ((snd(linhas !! (y))) !! (x+1)) == Parede
                                                                         then Jogador (x,y)
                                                                         else Jogador (x + 1,y)
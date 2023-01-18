{- |
Module      : Conversores
Description : Ficheiro com funções auxiliares.
Copyright   : Pedro Figueiredo Pereira <a104082@alunos.uminho.pt>
              Jorge Ubaldo Rodrigues Ferreira <a104096@alunos.uminho.pt>

Este módulo contem várias funções de conversão usadas em vários módulos do programa.  
-}
module Conversores where

import Graphics.Gloss

import LI12223
import ExtraDataConstructores

-- | Função para determinar a largura de um mapa.
getLargura :: Jogo -> Largura
getLargura (Jogo jogador (Mapa largura linhas)) = largura

-- | Função para determinar o jogador de um jogo.
agarraJogador :: Jogo -> Jogador
agarraJogador (Jogo jogador mapa) = jogador

-- | Função para determinar o mapa de um jogo.
agarraMapa :: Jogo -> Mapa
agarraMapa (Jogo jogador mapa) = mapa

-- | Função para converter um mapa numa matriz de obstaculos.
desconstroiMapa :: Mapa -> [[Obstaculo]]
desconstroiMapa (Mapa largura []) = []
desconstroiMapa (Mapa largura ((_, obs):t)) = obs : desconstroiMapa (Mapa largura t)

-- | Função para converter um Jogo numa matriz de obstaculos.
agarraObstaculos :: Jogo -> [[Obstaculo]]
agarraObstaculos (Jogo _ (Mapa largura [])) = []
agarraObstaculos (Jogo jogador (Mapa largura ((_, obs):t))) = obs : agarraObstaculos (Jogo jogador (Mapa largura t))

-- | Função para converter um obstaculo para uma string.
obstaculoToString :: [Obstaculo] -> [StringObstaculo]
obstaculoToString [] = []
obstaculoToString (h:t) = case h of
                               (Nenhum) -> "Nenhum" : obstaculoToString t
                               (Tronco) -> "Tronco" : obstaculoToString t
                               (Carro)  -> "Carro"  : obstaculoToString t
                               (Arvore) -> "Arvore" : obstaculoToString t
                               (Parede) -> "Parede" : obstaculoToString t
                               (Portal) -> "Portal" : obstaculoToString t

-- | Função para converter um Jogo numa matriz de Terrenos.
agarraTerrenos :: Jogo -> [[Terreno]]
agarraTerrenos (Jogo _ (Mapa largura [])) = []
agarraTerrenos (Jogo jogador (Mapa largura ((terreno, []):t))) = agarraTerrenos (Jogo jogador (Mapa largura t))
agarraTerrenos (Jogo jogador (Mapa largura ((terreno, _):t))) = (replicate largura terreno) : agarraTerrenos (Jogo jogador (Mapa largura t))

-- | Função para converter um terreno para uma string.
terrenoToString :: [Terreno] -> [StringTerreno]
terrenoToString [] = []
terrenoToString (h:t) = case h of
                               (Loja) -> "Loja" : terrenoToString t
                               (Rio _) -> "Rio" : terrenoToString t
                               (Relva) -> "Relva" : terrenoToString t
                               (Estrada _) -> "Estrada" : terrenoToString t

-- | Função para converter um terreno para uma string.
terrenoToString2 :: Terreno -> StringTerreno
terrenoToString2 terreno = case terreno of
                                        (Loja) -> "Loja"
                                        (Rio _) -> "Rio"
                                        (Relva) -> "Relva"
                                        (Estrada _) -> "Estrada"
 
-- | Função para converter um Modelo de personagem para uma string.
conversorModelopersonagemToNome :: Modelopersonagem -> String
conversorModelopersonagemToNome modelo = case modelo of
                                                "1" -> "Civil"
                                                "2" -> "Astronauta"
                                                "3" -> "Desportista"
                                                "4" -> "Condutor"
                                                "5" -> "Polícia"
                                                "6" -> "Político"
                                                "7" -> "Pinguim"
                                                "8" -> "Mário"
                                                "9" -> "Pikachu"
                                                "10" -> "Cozinheiro"

-- | Função para converter um Modelo de mapa para um inteiro.
conversorModeloMapaToInt :: ModeloMapa -> Int
conversorModeloMapaToInt string = case string of 
                                                "1" -> 1
                                                "2" -> 2
                                                "3" -> 3
                                                "4" -> 4
                                                "5" -> 5
                                                "6" -> 6
                                                "7" -> 7
                                                "8" -> 8
                                                "9" -> 9
                                                "10" -> 10
-- | Função para converter o tipo Roupas para uma string.
conversorRoupasToString :: Roupas -> String
conversorRoupasToString roupas = case roupas of Personagem -> "Personagem"
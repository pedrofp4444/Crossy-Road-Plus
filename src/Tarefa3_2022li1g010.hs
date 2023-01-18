{- |
Module      : Tarefa3_2022li1g010
Description : Movimentação do personagem e obstáculos
Copyright   : Pedro Figueiredo Pereira <a104082@alunos.uminho.pt>
              Jorge Ubaldo Rodrigues Ferreira <a104096@alunos.uminho.pt>

Módulo para a realização da Tarefa 3 do projeto de LI1 em 2022/23.
-}
module Tarefa3_2022li1g010 where

import LI12223
import Conversores

import Data.List

-- *Função 'animaJogo' 
{- | A função 'animaJogo' recebe:  __Jogo__  -> __Jogada__ e devolve __Jogo__. 
Esta função recorre às funções auxiliares 'posJogadorparado' e 'postroncoaux', para no fim receber o tipo esperado (__Jogo__). 

@
animaJogo :: Jogo -> Jogada -> Jogo
animaJogo jogo@(Jogo jogador mapa) movimento = Jogo (posJogador' jogo movimento) (deslocaObs jogo movimento)
@

== Exemplo de utilização:
>>> animaJogo (Jogo (Jogador (1,2)) (Mapa 5 [(Rio 1, [Nenhum,Tronco,Tronco,Nenhum,Nenhum]),(Rio 1, [Tronco,Tronco,Nenhum,Nenhum,Tronco])])])) (Move Direita)] = Jogo (Jogador (2,2)) (Mapa 5 [(Rio 1,[Nenhum,Nenhum,Tronco,Tronco,Nenhum]),(Rio 1,[Tronco,Tronco,Tronco,Nenhum,Nenhum])]) 

== Propriedades:
prop> Esta função não determina a validade de um jogador fora de um mapa, limita-se apenas na permitibilidade de movimentos do mesmo. 
-}

animaJogo :: Jogo -> Jogada -> Jogo
animaJogo jogo@(Jogo jogador mapa) movimento = Jogo (posJogador' jogo movimento) (deslocaObs jogo movimento) 

-- *Funções auxiliares

-- ** Função 'posobstaculos'
{- | A função 'posobstaculos' recebe uma __lista de tuplos__ e dá como resultado uma lista de tuplos.
    Como sabemos os terrenos : __Estrada__ e __Rio__ têm uma determinada velocidade, logo nesta função os obstáculos que fazem parte destes terrenos irão movimentar-se um número de vezes de acordo com a sua velocidade.  

Desta forma a função 'posobstaculos', chama recursivamente a função 'posaux', até ficar com uma __lista__ vazia, nesse momento a recursividade pára.  

@ 
posobstaculos :: [(Terreno,[Obstaculo])] -> [(Terreno,[Obstaculo])]
posobstaculos [] = []
posobstaculos ((Relva, obs):ts)     = (Relva, obs) : posobstaculos ts
posobstaculos ((Rio a, obs):ts)     = (Rio a, (posaux obs a)) : posobstaculos ts
posobstaculos ((Estrada a, obs):ts) = (Estrada a, (posaux obs a)) : posobstaculos ts
@

== Propriedades:
prop> O tipo de terreno : __Relva__ não tem velocidade, logo os seus obstáculos são fixos.

-}

posobstaculos :: [(Terreno,[Obstaculo])] -> [(Terreno,[Obstaculo])]
posobstaculos [] = []
posobstaculos ((Relva, obs):ts)     = (Relva, obs) : posobstaculos ts
posobstaculos ((Rio a, obs):ts)     = (Rio a, (posaux obs a)) : posobstaculos ts
posobstaculos ((Estrada a, obs):ts) = (Estrada a, (posaux obs a)) : posobstaculos ts

-- ** Função 'posaux'
{- | A função 'posaux' recebe uma __[Obstaculo]__ ainda recebe um __Int__ que corresponde à velocidade de um determinado terreno e da como resultado uma lista de obstaculos __[Obstaculos]__ . 
    Esta função é a encarregada de, para cada terreno diferente, que sejam feitas as movimentações dos seus obstáculos. 
    Ainda esta função no caso de o terreno ser uma Estrada, a função considera os casos de atropelhamento, caso o jogador este numa posição diferente a do carro, chama a função 'velaux'.
@ 
posaux :: [Obstaculo] -> Int -> [Obstaculo]
posaux obs 0 = obs  
posaux obs v = if v > 0
               then posaux (last obs : init obs) (v-1)
               else posaux (tail obs ++ [head obs]) (v+1)
@

== Propriedades:
prop> A função para a sua recursividade quando o Int for 0. 
prop> Se a velocidade é maior que 0, logo o terreno tem direção horizontal e sentido de esquerda a direita.
prop> Se a velocidade é menor que 0, logo o terreno tem direção horizontal e sentido de direita a esquerda. 
porp> Se a velocidade é 0, isto sinifica que os objetos não mudam mais de posição.
-}

posaux :: [Obstaculo] -> Int -> [Obstaculo]
posaux obs 0 = obs  
posaux obs v = if v > 0
               then posaux (last obs : init obs) (v-1)
               else posaux (tail obs ++ [head obs]) (v+1)

-- ** Função 'posJogador'
{- | A função 'posJogador' recebe um __Jogo__ e uma __Jogada__  e dá como resultado um __Jogador__. 
    O objetivo desta função é efetuar a __Jogada__ inserida na função 'animaJogo'.
    Esta função recorre a 1 funções auxiliar : 'localizavelocidade. 
    Desta forma, a função considerará para qualquer que seja o terreno, as diferentes possibilidades de __Jogada__, respeitando as diferentes regras básicas do jogo.

@
posJogador' :: Jogo -> Jogada -> Jogador
posJogador' jogo@(Jogo (Jogador (x,y)) (Mapa largura linhas)) Parado | x > largura || y > length linhas = Jogador (x,y)
                                                                     | (x < largura) && (y < length linhas) && ((snd (linhas !! y)) !! x == Tronco) =  Jogador ((x + localizavelocidade jogo),y)  
                                                                     | otherwise = Jogador (x,y)

posJogador' jogo@(Jogo (Jogador (x,y)) (Mapa largura linhas)) (Move Cima) | x > largura || y > length linhas = Jogador (x,y)
                                                                          | (x < largura) && (y < length linhas) && ((snd (linhas !! y)) !! x == Tronco) && ((snd(linhas !! (y-1))) !! x == Arvore) = Jogador ((x + localizavelocidade jogo),y)
                                                                          | y == 0 || ((snd(linhas !! (y-1))) !! x) == Arvore = Jogador (x,y) 
                                                                          | otherwise = Jogador (x,y-1)

posJogador' jogo@(Jogo (Jogador (x,y)) (Mapa largura linhas)) (Move Baixo) | x > largura || y > length linhas = Jogador (x,y)
                                                                           | (x < largura) && (y < length linhas) && ((snd (linhas !! y)) !! x == Tronco) && ((snd(linhas !! (y+1))) !! x == Arvore) = Jogador ((x + localizavelocidade jogo),y)   
                                                                           | y == ((length linhas)-1) || ((snd(linhas !! (y+1))) !! x) == Arvore = Jogador (x,y)
                                                                           | otherwise = Jogador (x,y + 1)

posJogador' jogo@(Jogo (Jogador (x,y)) (Mapa largura linhas)) (Move Direita) | x > largura || y > length linhas = Jogador (x,y)
                                                                             | (x < largura) && (y < length linhas) && ((snd (linhas !! y)) !! x == Tronco) = (Jogador ((x + 1 + localizavelocidade jogo),y))
                                                                             | x == (largura - 1) || ((snd(linhas !! (y))) !! (x+1)) == Arvore = Jogador (x,y)
                                                                             | otherwise = Jogador (x + 1,y)

posJogador' jogo@(Jogo (Jogador (x,y)) (Mapa largura linhas)) (Move Esquerda) | x > largura || y > length linhas = Jogador (x,y)
                                                                              | (x < largura) && (y < length linhas) && ((snd (linhas !! y)) !! x == Tronco) = (Jogador ((x - 1 + localizavelocidade jogo),y)) 
                                                                              | x == 0 || ((snd(linhas !! (y))) !! (x-1)) == Arvore = Jogador (x,y)
                                                                              | otherwise = Jogador (x - 1,y)
 
@

== Propriedades:
prop> O jogador nunca pode ir para cima de uma /arvore/. 
prop> Se o jogador se encontra num tronco, este deverá movimentar-se com a velocidade do mesmo. 
prop> Se o jogador efetua uma  Jogada : __Cima__ ou __Baixo__ e ao mesmo tempo se encontrar num tronco, este não adquire a velocidade do tronco e efetua a __Jogada__ correspondente, caso o jogador tenha à frente ou atrás uma Arvore, matem-se no tronco e movimenta-se com a velocidade deste.

-}

posJogador' :: Jogo -> Jogada -> Jogador
posJogador' jogo@(Jogo (Jogador (x,y)) (Mapa largura linhas)) Parado | x > largura || y > length linhas = Jogador (x,y)
                                                                     | (x < largura) && (y < length linhas) && ((snd (linhas !! y)) !! x == Tronco) =  Jogador ((x + localizavelocidade jogo),y)  
                                                                     | otherwise = Jogador (x,y)

posJogador' jogo@(Jogo (Jogador (x,y)) (Mapa largura linhas)) (Move Cima) | x > largura || y > length linhas = Jogador (x,y)
                                                                          | (x < largura) && (y < length linhas) && ((snd (linhas !! y)) !! x == Tronco) && ((snd(linhas !! (y-1))) !! x == Arvore) = Jogador ((x + localizavelocidade jogo),y)
                                                                          | y == 0 || ((snd(linhas !! (y-1))) !! x) == Arvore = Jogador (x,y) 
                                                                          | otherwise = Jogador (x,y-1)

posJogador' jogo@(Jogo (Jogador (x,y)) (Mapa largura linhas)) (Move Baixo) | x > largura || y > length linhas = Jogador (x,y)
                                                                           | (x < largura) && (y < length linhas) && ((snd (linhas !! y)) !! x == Tronco) && ((snd(linhas !! (y+1))) !! x == Arvore) = Jogador ((x + localizavelocidade jogo),y)   
                                                                           | y == ((length linhas)-1) || ((snd(linhas !! (y+1))) !! x) == Arvore = Jogador (x,y)
                                                                           | otherwise = Jogador (x,y + 1)

posJogador' jogo@(Jogo (Jogador (x,y)) (Mapa largura linhas)) (Move Direita) | x > largura || y > length linhas = Jogador (x,y)
                                                                             | (x < largura) && (y < length linhas) && ((snd (linhas !! y)) !! x == Tronco) = (Jogador ((x + 1 + localizavelocidade jogo),y))
                                                                             | x == (largura - 1) || ((snd(linhas !! (y))) !! (x+1)) == Arvore = Jogador (x,y)
                                                                             | otherwise = Jogador (x + 1,y)

posJogador' jogo@(Jogo (Jogador (x,y)) (Mapa largura linhas)) (Move Esquerda) | x > largura || y > length linhas = Jogador (x,y)
                                                                              | (x < largura) && (y < length linhas) && ((snd (linhas !! y)) !! x == Tronco) = (Jogador ((x - 1 + localizavelocidade jogo),y)) 
                                                                              | x == 0 || ((snd(linhas !! (y))) !! (x-1)) == Arvore = Jogador (x,y)
                                                                              | otherwise = Jogador (x - 1,y)

-- ** Função 'deslocaObs'
{- | A função 'deslocaObs' recebe um __Jogo__  e uma __Jogada__ dá como resultado um __Mapa__. 
    O objetivo desta função é deslocar os obstáculos de acordo com a sua velocidade, assim como o controlo dos atropelamentos. 

@
deslocaObs :: Jogo -> Jogada -> Mapa
deslocaObs jogo@(Jogo jogador@(Jogador (x,y)) (Mapa largura linhas)) (Move Direita ) | terrenoToString2 (fst(linhas !! y))     == "Estrada" = Mapa largura (posobstaculos (init $ fst $ parteLista (y+1) linhas) ++ [(Estrada (localizavelocidade jogo)    , posauxEstrada (snd $ last $ fst $ parteLista (y+1) linhas) (localizavelocidade jogo)(x+1))]  ++ posobstaculos (snd $ parteLista (y+1) linhas))
     where parteLista n l = (take n l, drop n l)
           veloParaCima = velo (fst (linhas !! (y-1)))
           veloParaBaixo = velo (fst (linhas !! (y+1)))
           velo (Estrada v) = v
deslocaObs jogo@(Jogo jogador@(Jogador (x,y)) (Mapa largura linhas)) (Move Esquerda) | terrenoToString2 (fst(linhas !! y))     == "Estrada" = Mapa largura (posobstaculos (init $ fst $ parteLista (y+1) linhas) ++ [(Estrada (localizavelocidade jogo)    , posauxEstrada (snd $ last $ fst $ parteLista (y+1) linhas) (localizavelocidade jogo)(x-1))]  ++ posobstaculos (snd $ parteLista (y+1) linhas))
     where parteLista n l = (take n l, drop n l)
           veloParaCima = velo (fst (linhas !! (y-1)))
           veloParaBaixo = velo (fst (linhas !! (y+1)))
           velo (Estrada v) = v
deslocaObs jogo@(Jogo jogador@(Jogador (x,y)) (Mapa largura linhas)) (Move Cima    ) | terrenoToString2 (fst(linhas !! (y-1))) == "Estrada" = Mapa largura (posobstaculos (init $ fst $ parteLista y linhas)     ++ [(Estrada veloParaCima                  , posauxEstrada (snd $ last $ fst $ parteLista y linhas) veloParaCima x)]                       ++ posobstaculos (snd $ parteLista   y   linhas))
     where parteLista n l = (take n l, drop n l)
           veloParaCima = velo (fst (linhas !! (y-1)))
           veloParaBaixo = velo (fst (linhas !! (y+1)))
           velo (Estrada v) = v
deslocaObs jogo@(Jogo jogador@(Jogador (x,y)) (Mapa largura linhas)) (Move Baixo   ) | terrenoToString2 (fst(linhas !! (y+1))) == "Estrada" = Mapa largura (posobstaculos (init $ fst $ parteLista (y+2) linhas) ++ [(Estrada veloParaBaixo                 , posauxEstrada (snd $ last $ fst $ parteLista (y+2) linhas) veloParaBaixo x)]                  ++ posobstaculos (snd $ parteLista (y+2) linhas))
     where parteLista n l = (take n l, drop n l)
           veloParaCima = velo (fst (linhas !! (y-1)))
           veloParaBaixo = velo (fst (linhas !! (y+1)))
           velo (Estrada v) = v
deslocaObs jogo@(Jogo jogador@(Jogador (x,y)) (Mapa largura linhas)) (Parado       ) | terrenoToString2 (fst(linhas !! y))     == "Estrada" = Mapa largura (posobstaculos (init $ fst $ parteLista (y+1) linhas) ++ [(Estrada (localizavelocidade jogo)    , posauxEstrada (snd $ last $ fst $ parteLista (y+1) linhas) (localizavelocidade jogo)x)]      ++ posobstaculos (snd $ parteLista (y+1) linhas))
     where parteLista n l = (take n l, drop n l)
           veloParaCima = velo (fst (linhas !! (y-1)))
           veloParaBaixo = velo (fst (linhas !! (y+1)))
           velo (Estrada v) = v
deslocaObs jogo@(Jogo jogador@(Jogador (x,y)) (Mapa largura linhas)) _               = Mapa largura (posobstaculos linhas)
     where parteLista n l = (take n l, drop n l)
           veloParaCima = velo (fst (linhas !! (y-1)))
           veloParaBaixo = velo (fst (linhas !! (y+1)))
           velo (Estrada v) = v 
@
-}
 
deslocaObs :: Jogo -> Jogada -> Mapa
deslocaObs jogo@(Jogo jogador@(Jogador (x,y)) (Mapa largura linhas)) (Move Direita ) | terrenoToString2 (fst(linhas !! y))     == "Estrada" = Mapa largura (posobstaculos (init $ fst $ parteLista (y+1) linhas) ++ [(Estrada (localizavelocidade jogo)    , posauxEstrada (snd $ last $ fst $ parteLista (y+1) linhas) (localizavelocidade jogo)(x+1))]  ++ posobstaculos (snd $ parteLista (y+1) linhas))
     where parteLista n l = (take n l, drop n l)
           veloParaCima = velo (fst (linhas !! (y-1)))
           veloParaBaixo = velo (fst (linhas !! (y+1)))
           velo (Estrada v) = v
deslocaObs jogo@(Jogo jogador@(Jogador (x,y)) (Mapa largura linhas)) (Move Esquerda) | terrenoToString2 (fst(linhas !! y))     == "Estrada" = Mapa largura (posobstaculos (init $ fst $ parteLista (y+1) linhas) ++ [(Estrada (localizavelocidade jogo)    , posauxEstrada (snd $ last $ fst $ parteLista (y+1) linhas) (localizavelocidade jogo)(x-1))]  ++ posobstaculos (snd $ parteLista (y+1) linhas))
     where parteLista n l = (take n l, drop n l)
           veloParaCima = velo (fst (linhas !! (y-1)))
           veloParaBaixo = velo (fst (linhas !! (y+1)))
           velo (Estrada v) = v
deslocaObs jogo@(Jogo jogador@(Jogador (x,y)) (Mapa largura linhas)) (Move Cima    ) | terrenoToString2 (fst(linhas !! (y-1))) == "Estrada" = Mapa largura (posobstaculos (init $ fst $ parteLista y linhas)     ++ [(Estrada veloParaCima                  , posauxEstrada (snd $ last $ fst $ parteLista y linhas) veloParaCima x)]                       ++ posobstaculos (snd $ parteLista   y   linhas))
     where parteLista n l = (take n l, drop n l)
           veloParaCima = velo (fst (linhas !! (y-1)))
           veloParaBaixo = velo (fst (linhas !! (y+1)))
           velo (Estrada v) = v
deslocaObs jogo@(Jogo jogador@(Jogador (x,y)) (Mapa largura linhas)) (Move Baixo   ) | terrenoToString2 (fst(linhas !! (y+1))) == "Estrada" = Mapa largura (posobstaculos (init $ fst $ parteLista (y+2) linhas) ++ [(Estrada veloParaBaixo                 , posauxEstrada (snd $ last $ fst $ parteLista (y+2) linhas) veloParaBaixo x)]                  ++ posobstaculos (snd $ parteLista (y+2) linhas))
     where parteLista n l = (take n l, drop n l)
           veloParaCima = velo (fst (linhas !! (y-1)))
           veloParaBaixo = velo (fst (linhas !! (y+1)))
           velo (Estrada v) = v
deslocaObs jogo@(Jogo jogador@(Jogador (x,y)) (Mapa largura linhas)) (Parado       ) | terrenoToString2 (fst(linhas !! y))     == "Estrada" = Mapa largura (posobstaculos (init $ fst $ parteLista (y+1) linhas) ++ [(Estrada (localizavelocidade jogo)    , posauxEstrada (snd $ last $ fst $ parteLista (y+1) linhas) (localizavelocidade jogo)x)]      ++ posobstaculos (snd $ parteLista (y+1) linhas))
     where parteLista n l = (take n l, drop n l)
           veloParaCima = velo (fst (linhas !! (y-1)))
           veloParaBaixo = velo (fst (linhas !! (y+1)))
           velo (Estrada v) = v
deslocaObs jogo@(Jogo jogador@(Jogador (x,y)) (Mapa largura linhas)) _               = Mapa largura (posobstaculos linhas)
     where parteLista n l = (take n l, drop n l)
           veloParaCima = velo (fst (linhas !! (y-1)))
           veloParaBaixo = velo (fst (linhas !! (y+1)))
           velo (Estrada v) = v 

-- ** Função 'posauxEstrada'
{- | A função 'posauxEstrada' recebe um __[Obstaculo]__, dois __Int__ e dá como resultado uma lista do tipo  __[Obstaculo]__. 
    O objetivo desta função é auxiliar o movimento na estrada. 

@
posauxEstrada :: [Obstaculo] -> Int -> Int -> [Obstaculo]
posauxEstrada linha velocidade posicao = if velocidade > 0 && (linha !! posicao) == Nenhum 
                                         then posauxEstrada (last linha : init linha) (velocidade - 1) posicao  
                                         else if velocidade < 0 && (linha !! posicao) == Nenhum
                                              then posauxEstrada (tail linha ++ [head linha]) (velocidade + 1) posicao
                                              else linha 
@
-}

posauxEstrada :: [Obstaculo] -> Int -> Int -> [Obstaculo]
posauxEstrada linha velocidade posicao = if velocidade > 0 && (linha !! posicao) == Nenhum 
                                         then posauxEstrada (last linha : init linha) (velocidade - 1) posicao  
                                         else if velocidade < 0 && (linha !! posicao) == Nenhum
                                              then posauxEstrada (tail linha ++ [head linha]) (velocidade + 1) posicao
                                              else linha

-- ** Função 'localizajogador'
{- | A função 'localizajogador' recebe um __Jogo__  e dá como resultado uma lista do tipo  __Obstaculo__. 
    O objetivo desta função é encontrar a lista de objetos da linhas onde o jogador se encontra. 

@
localizajogador :: Jogo -> [Obstaculo]
localizajogador (Jogo (Jogador (x,y)) (Mapa largura linhas)) = (snd (linhas !! y)) 
@

== Exemplo:
>>> localizajogador (Jogo (Jogador (0,1)) (Mapa 2 [(Rio 1, [Nenhum,Tronco]),(Estrada 2, [Nenhum,Carro])])) = [Nenhum,Carro]
-}
        
localizajogador :: Jogo -> [Obstaculo]
localizajogador (Jogo (Jogador (x,y)) (Mapa largura linhas)) = (snd (linhas !! y)) 

-- ** Função 'localizavelocidade
{- | A função 'localizavelocidade recebe um __Jogo__ e dá como resultado uma __Velocidade__. 
    O objetivo desta função é encontrar a __Velocidade__ do /Rio/ onde o jogador se encontra.  

@
localizavelocidade :: Jogo -> Velocidade 
localizavelocidade (Jogo (Jogador (x,y)) (Mapa largura linhas)) = veloaux (fst (linhas !! y))
    where veloaux (Rio v) = v  
@

== Exemplo:
>>> localizavelocidade (Jogo (Jogador (0,1)) (Mapa 2 [(Rio 1, [Nenhum,Tronco]),(Rio 2, [Nenhum,Carro])])) = 2
-}

localizavelocidade :: Jogo -> Velocidade 
localizavelocidade (Jogo (Jogador (x,y)) (Mapa largura linhas)) = veloaux (fst (linhas !! y))
    where veloaux (Rio v) = v  
          veloaux (Estrada v) = v  
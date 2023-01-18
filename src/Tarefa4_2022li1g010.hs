{- |
Module      : Tarefa4_2022li1g010
Description : Determinar se o jogo terminou
Copyright   : Pedro Figueiredo Pereira <a104082@alunos.uminho.pt>
              Jorge Ubaldo Rodrigues Ferreira <a104096@alunos.uminho.pt>

Este módulo contem a resolução da Tarefa 4, a qual Determina se um jogo terminou.  
-}
module Tarefa4_2022li1g010 where

import LI12223 

-- *Função main
{- | A função 'jogoTerminou' recebe um __Jogo__ e determina se este já acabou ou se ainda está a decorrer.
Esta recorre às funções auxiliares 'dentroDoMapa' e 'verifica', para desta forma determinar o valor lógico desta função. 

@
jogoTerminou :: Jogo -> Bool
jogoTerminou (Jogo (Jogador (x,y)) (Mapa largura [])) = True
jogoTerminou (Jogo (Jogador (x,y)) (Mapa largura linhas)) = (dentroDoMapa (Jogo (Jogador (x,y)) (Mapa largura linhas))) || (f (localizaterreno (Jogo (Jogador (x,y)) (Mapa largura linhas))))
@

== Exemplo de utilização:
>>> jogoTerminou (Jogo (Jogador (1,2)) (Mapa 3 [(Rio 1,[Tronco, Nenhum, Tronco, Tronco, Tronco]),(Rio (-1), [Nenhum, Nenhum, Tronco, Tronco, Tronco]),(Rio 1,[Tronco, Nenhum, Tronco, Nenhum, Nenhum])]))] = True
>>> jogoTerminou (Jogo (Jogador (0,1)) (Mapa 3 [(Estrada 1, [Carro, Nenhum, Nenhum, Carro, Carro]),(Estrada 1, [Nenhum, Nenhum, Carro, Carro, Carro]),(Estrada 1, [Carro, Nenhum, Carro, Nenhum, Nenhum])]))] = False

== Propriedades:
prop> Se jogoTerminou = True , logo o jogo acaba. 
prop> Se jogoTerminou = False ,logo o jogo ainda decorre.
prop> Basta que uma das funções auxiliares verificarem o valor True para a verificar que o jogo acaba. 
-}

jogoTerminou :: Jogo -> Bool
jogoTerminou (Jogo (Jogador (x,y)) (Mapa largura [])) = True
jogoTerminou (Jogo (Jogador (x,y)) (Mapa largura linhas)) = (dentroDoMapa (Jogo (Jogador (x,y)) (Mapa largura linhas))) || (verifica (localizaterreno (Jogo (Jogador (x,y)) (Mapa largura linhas))))

-- *Funções auxiliares

-- ** Função 'verifica'
{- | A função 'verifica' recebe um __tuplo__ do tipo (Terreno, Obstaculo) e dá como resultado um __boolean__.
Esta função servirá para determinar o valor lógico de um determinado __tuplo__ , obtido na função auxiliar 'localizaterreno'.

@
verifica :: (Terreno, Obstaculo) -> Bool
verifica (Rio v, Nenhum) = True
verifica (Estrada v, Carro) = True
verifica (_, _) = False
@

== Propriedades:
prop> verifica (Rio v, Nenhum) = True      Isto significa que, o jogador se encontra na água, logo ao entrar na função main o jogo acabará. 
prop> verifica (Estrada v, Carro) = True   Isto significa que, o jogador se encontra na mesma posição que um carro, logo ao entrar na função main o jogo acabará.
prop> verifica (_,_) = False               Para qualquer outra situação o jogo contínua pois, o jogador não foi atropelado nem se afogou (nesta função não se considera o jogador estar fora do mapa).
-}

verifica :: (Terreno, Obstaculo) -> Bool
verifica (Rio v, Nenhum) = True
verifica (Estrada v, Carro) = True
verifica (_, _) = False

-- **Função 'localizaterreno'
{- | A função 'localizaterreno' recebe um __Jogo__ do tipo Jogo Jogador Mapa e dá como resultado um __tuplo__, o qual corresponde à posição do jogador no mapa (terreno,obstaculo).
De esta forma, chama-se a função auxiliar 'localizaobstaculo' (que recebe o tuplo onde se encontra a personagem e a coordenada x da personagem).

@
localizaterreno :: Jogo -> (Terreno, Obstaculo)
localizaterreno (Jogo (Jogador (x,y)) (Mapa largura linhas)) = (terreno, obstaculo) 
    where 
        terreno = fst (linhas !! y) 
        linhaInteira = linhas !! y
        obstaculo = localizaobstaculo linhaInteira x 
@

== Exemplo de utilização:
>>> localizaterreno Jogo (Jogador (1,1)) (Mapa 4 [(Rio 1, [Nenhum,Tronco,Tronco,Nenhum]),(Estrada 1, [Nenhum,Carro,Nenhum,Carro])]) = (Estrada 1, Carro)
-}

localizaterreno :: Jogo -> (Terreno, Obstaculo)
localizaterreno (Jogo (Jogador (x,y)) (Mapa largura linhas)) = (terreno, obstaculo) 
    where 
        terreno = fst (linhas !! y) 
        linhaInteira = linhas !! y
        obstaculo = localizaobstaculo linhaInteira x 

-- **Função 'localizaobstaculo'
{- | A função 'localizaobstaculo' recebe um __Tuplo__ e um __Inteiro__ da função anterior 'localizaterreno' e devolve um __Obstaculo__ .
Esta função servirá para determinar o __Obstaculo__ onde o jogador com coordenadas (x,y) se encontra. 

@
localizaobstaculo :: (Terreno, [Obstaculo]) -> Int -> Obstaculo
localizaobstaculo (Rio _, obs) x = obstaculo  
    where
        obstaculo = obs !! x 
localizaobstaculo (Estrada _, obs) x = obstaculo 
    where
        obstaculo = obs !! x 
localizaobstaculo (Relva, obs) x = obstaculo 
    where
        obstaculo = obs !! x 
@

== Exemplo de utilização:
>>> localizaobstaculo (Rio a, [Nenhum,Tronco,Nenhum]) 1 = Tronco
>>> localizaobstaculo (Estrada a, [Carro,Nenhum,Nenhum,Carro]) 0 = Carro 
-}

localizaobstaculo :: (Terreno, [Obstaculo]) -> Int -> Obstaculo
localizaobstaculo (Rio _, obs) x = obstaculo  
    where
        obstaculo = obs !! x 
localizaobstaculo (Estrada _, obs) x = obstaculo 
    where
        obstaculo = obs !! x 
localizaobstaculo (Relva, obs) x = obstaculo 
    where
        obstaculo = obs !! x 

-- ** Função 'dentroDoMapa'
{- | A função 'dentroDoMapa' recebe um __Jogo__ do tipo (Jogo Jogador Mapa) e dá como resultado um __Boolean__.
Esta função servirá para determinar o valor lógico de um determinado __Jogo__ , o qual irá verificar que um determinado jogador tenha coordenadas pertencentes ao referencial considerado (linhas e colunas).

@
dentroDoMapa :: Jogo -> Bool
dentroDoMapa (Jogo (Jogador (x,y)) (Mapa largura linhas)) = (length linhas < y || y < 0) || ( largura < x || x < 0) 
@

== Exemplos de utilização:
>>> dentroDoMapa (Jogo (Jogador (0,1)) (Mapa 5 [(Estrada 1, [Carro, Nenhum, Nenhum, Carro, Carro]),(Estrada 1, [Nenhum, Nenhum, Carro, Carro, Carro]),(Estrada 1, [Carro, Nenhum, Carro, Nenhum, Nenhum])]))] = True
>>> dentroDoMapa (Jogo (Jogador (0,3)) (Mapa 5 [(Estrada 1, [Carro, Nenhum, Nenhum, Carro, Carro]),(Estrada 1, [Nenhum, Nenhum, Carro, Carro, Carro]),(Estrada 1, [Carro, Nenhum, Carro, Nenhum, Nenhum])]))] = False

== Propriedades:
prop> (length linhas) <= y   Como a tabela de entrada do jogo considera a posição y = 0, logo o y do jogador tera sempre um valor mais acima da length das linhas, daqui o jogador ficar fora do mapa sempre que que a condição for True.
prop> (largura )      <= x   Como a tabela de entrada do jogo considera a posição x = 0, pelo mesmo raciocínio da alinia anterior, o jogador ficara fora do mapa sempre que a condição for True.
-}

dentroDoMapa :: Jogo -> Bool
dentroDoMapa (Jogo (Jogador (x,y)) (Mapa largura linhas)) = ((length linhas) <= y || y < 0) || ((largura) <= x || x < 0)
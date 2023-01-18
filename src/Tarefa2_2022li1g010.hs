{- |
Module      : Tarefa2_2022li1g010
Description : Geração contínua de um mapa
Copyright   : Pedro Figueiredo Pereira <a104082@alunos.uminho.pt>
              Jorge Ubaldo Rodrigues Ferreira <a104096@alunos.uminho.pt>

Módulo para a realização da Tarefa 2 do projeto de LI1 em 2022/23.
-}

module Tarefa2_2022li1g010 where

import Niveis
import LI12223
import Data.List
import System.Random

-- *Função main
{- | A função 'estendeMapa' recebe um __Mapa__ e acrescenta um linha, de forma a promover uma geração contínua do mesmo.
Esta recorre as funções auxiliares 'escolheTerrenoValido', 'criaLinhaObstaculosValida' e a função 'geradorVelocidadeRio', para desta forma determinar o novo Mapa gerado nesta função. 

@
estendeMapa :: Mapa -> Int -> Mapa
estendeMapa (Mapa largura linhas@(h@(terreno1, obs1):t)) numero | terreno == Rio 0 = (Mapa largura ((Rio vr, obs):(terreno1, obs1):t))
                                                                | terreno == Estrada 0 = (Mapa largura ((Estrada v, obs):h:t))
                                                                | terreno == Relva = (Mapa largura ((Relva, obs):h:t))
    where
        terreno = escolheTerrenoValido (Mapa largura linhas) numero
        obs = criaLinhaObstaculosValida largura (terreno, []) (mkStdGen numero) 0 0 0
        v = velocidadesPossiveis !! (mod numero (length velocidadesPossiveis))
            where 
                velocidadesPossiveis = (delete 0 [(-3)..(3)])
        vr = geradorVelocidadeRio terreno1 numero  
@

== Exemplo de utilização:
>>> estendeMapa (Mapa 2 [(Rio 2, [Tronco, Nenhum]), (Estrada 2, [Carro, Nenhum])]) 89 = Mapa 2 [(Relva,[Nenhum,Nenhum]),(Rio 2,[Tronco,Nenhum]),(Estrada 2,[Carro,Nenhum])]
>>> estendeMapa (Mapa 2 [(Rio 2, [Tronco, Nenhum]), (Estrada 2, [Carro, Nenhum])]) 34 = Mapa 2 [(Rio (-4),[Nenhum,Tronco]),(Rio 2,[Nenhum,Tronco]),(Estrada 2,[Carro,Nenhum])]

== Propriedades:
prop> Recebe sempre um Mapa válido.
prop> Cria sempre uma linha válida. 
-}

estendeMapa :: Mapa -> Int -> Mapa
estendeMapa (Mapa largura linhas@(h@(terreno1, obs1):t)) numero | terreno == Rio 0 = (Mapa largura ((Rio vr, obs):(terreno1, obs1):t))
                                                                | terreno == Estrada 0 = (Mapa largura ((Estrada v, obs):h:t))
                                                                | terreno == Relva = (Mapa largura ((Relva, obs):h:t))
    where
        terreno = escolheTerrenoValido (Mapa largura linhas) numero
        obs = criaLinhaObstaculosValida largura (terreno, []) (mkStdGen numero) 0 0 0
        v = velocidadesPossiveis !! (mod numero (length velocidadesPossiveis))
            where 
                velocidadesPossiveis = (delete 0 [(-3)..(3)])
        vr = geradorVelocidadeRio terreno1 numero 

-- *Funções auxiliares

-- ** Função 'geradorVelocidadeRio'
{- | A função 'geradorVelocidadeRio' recebe um __Terreno__ e um __Inteiro__ (número aleatório) e dá como resultado um __Inteiro__ (velocidade).
Esta função servirá para determinar uma velocidade válida com base na comparação com o caso anterior.

@
geradorVelocidadeRio :: Terreno -> Int -> Int 
geradorVelocidadeRio (Rio vr) numero | vr < 0 = (mod numero 3) + 1 
                                     | otherwise = ((-1) * (mod numero 3)) - 1
geradorVelocidadeRio _ numero = (mod numero 3) + 1
@

== Propriedades:
prop> Verifica o valor da velocidade do terreno anterior no caso de ser Rio. 
prop> Produz um valor de velocidade aleatório, com sentido oposto ao do Rio anterior.
-}

geradorVelocidadeRio :: Terreno -> Int -> Int 
geradorVelocidadeRio (Rio vr) numero | vr < 0 = (mod numero 3) + 1 
                                     | otherwise = ((-1) * (mod numero 3)) - 1
geradorVelocidadeRio _ numero = (mod numero 3) + 1 
 
-- **Função 'escolheTerrenoValido'
{- | A função 'escolheTerrenoValido' recebe um __Mapa__ e um __Int__ (número aleatório) e dá como resultado um __Terreno__, o qual corresponde ao terreno da nova linha.
Desta forma, chama-se a função auxiliar 'proximosTerrenosValidos' (que entrega à função a lista de possibilidades de Terrenos possíveis).

@
escolheTerrenoValido :: Mapa -> Int -> Terreno
escolheTerrenoValido (Mapa largura linhas) numero = listaTerrenosValidos !! (mod numero (length listaTerrenosValidos)) 
        where
            listaTerrenosValidos = proximosTerrenosValidos (Mapa largura linhas)  
@

== Exemplo de utilização:
>>> escolheTerrenoValido (Mapa 2 [(Rio 2, [Tronco, Nenhum]), (Estrada 2, [Carro, Nenhum])]) 34 = Rio 0
>>> escolheTerrenoValido (Mapa 2 [(Relva, [Arvore, Nenhum]), (Estrada 2, [Carro, Nenhum])]) 57 = Estrada 0
-}

escolheTerrenoValido :: Mapa -> Int -> Terreno
escolheTerrenoValido (Mapa largura linhas) numero = listaTerrenosValidos !! (mod numero (length listaTerrenosValidos)) 
        where
            listaTerrenosValidos = proximosTerrenosValidos (Mapa largura linhas) 

-- **Função 'criaLinhaObstaculosValida'
{- | A função 'criaLinhaObstaculosValida' recebe um __Inteiro__ (largura do mapa), um __Tuplo__ (linha representada por (terreno, obs)), um __StdGen__ (número aleatório) e um __Inteiro__ (acumulador de controlo) e dá como resultado uma __[Obstaculo]__, a qual corresponde à lista de obstáculos da nova linha.
Desta forma, chama-se a função auxiliar 'proximosObstaculosValidos' (que entrega à função a lista de possibilidades de Obstáculos possíveis).

@
criaLinhaObstaculosValida :: Int -> (Terreno, [Obstaculo]) -> StdGen -> Int -> Int -> Int -> [Obstaculo]
criaLinhaObstaculosValida largura (terreno, obs) numero acc contacarros contatroncos 
        | largura <= acc = []
        | acc == 0 = Nenhum : criaLinhaObstaculosValida largura (terreno, obs) proxnum (acc + 1) 0 0
        | terreno == Relva = obstaculos : criaLinhaObstaculosValida largura (terreno, obs) proxnum (acc + 1) 0 0
        | (obstaculos == Carro) && (contacarros < 3) = obstaculos : criaLinhaObstaculosValida largura (terreno, obs) proxnum (acc + 1) (contacarros + 1) contatroncos
        | (obstaculos == Tronco) && (contatroncos < 5) = obstaculos : criaLinhaObstaculosValida largura (terreno, obs) proxnum (acc + 1) contacarros (contatroncos + 1)
        | otherwise = Nenhum : criaLinhaObstaculosValida largura (terreno, obs) proxnum (acc + 1) 0 0
                         where 
                             obstaculos = listaObstaculosValidos !! (mod num (length listaObstaculosValidos))
                                    where
                                        listaObstaculosValidos = proximosObstaculosValidosAux largura (terreno, obs)
                             (num, proxnum) = next numero 
@

== Exemplo de utilização:
>>> criaLinhaObstaculosValida 2 (Rio 2, []) 37 1 = [Nenhum, Tronco]
>>> criaLinhaObstaculosValida 4 (Relva, []) 48 1 = [Nenhum, Arvore, Arvore, Nenhum]
-}

criaLinhaObstaculosValida :: Int -> (Terreno, [Obstaculo]) -> StdGen -> Int -> Int -> Int -> [Obstaculo]
criaLinhaObstaculosValida largura (terreno, obs) numero acc contacarros contatroncos 
        | largura <= acc = []
        | acc == 0 = Nenhum : criaLinhaObstaculosValida largura (terreno, obs) proxnum (acc + 1) 0 0
        | terreno == Relva = obstaculos : criaLinhaObstaculosValida largura (terreno, obs) proxnum (acc + 1) 0 0
        | (obstaculos == Carro) && (contacarros < 3) = obstaculos : criaLinhaObstaculosValida largura (terreno, obs) proxnum (acc + 1) (contacarros + 1) contatroncos
        | (obstaculos == Tronco) && (contatroncos < 5) = obstaculos : criaLinhaObstaculosValida largura (terreno, obs) proxnum (acc + 1) contacarros (contatroncos + 1)
        | otherwise = Nenhum : criaLinhaObstaculosValida largura (terreno, obs) proxnum (acc + 1) 0 0
                         where 
                             obstaculos = listaObstaculosValidos !! (mod num (length listaObstaculosValidos))
                                    where
                                        listaObstaculosValidos = proximosObstaculosValidosAux largura (terreno, obs)
                             (num, proxnum) = next numero

-- **Função 'proximosTerrenosValidos'
{- | A função 'proximosTerrenosValidos' recebe um __Mapa__  e dá como resultado uma __[Terreno]__, a qual corresponde à lista de terrenos possíveis.
Esta função recorre ao pattern matching para criar uma lista totalmente válida.

@
proximosTerrenosValidos :: Mapa -> [Terreno]
proximosTerrenosValidos (Mapa _ []) = [Estrada 0, Rio 0, Relva]
proximosTerrenosValidos (Mapa largura ((Rio _, _):(Rio _, _):(Rio _, _):(Rio _, _):t)) = [Estrada 0, Relva]
proximosTerrenosValidos (Mapa largura ((Estrada _, _):(Estrada _, _):(Estrada _, _):(Estrada _, _):(Estrada _, _):t)) = [Rio 0, Relva]
proximosTerrenosValidos (Mapa largura ((Relva, _):(Relva, _):(Relva, _):(Relva, _):(Relva, _):t)) = [Rio 0, Estrada 0]
proximosTerrenosValidos (Mapa _ linhas) = [Estrada 0, Rio 0, Relva]
@

== Exemplo de utilização:
>>> proximosTerrenosValidos (Mapa 2 [(Rio 2, [Tronco, Nenhum]), (Estrada 2, [Carro, Nenhum])]) = [Estrada 0, Rio 0, Relva]
>>> proximosTerrenosValidos (Mapa 2 [(Estrada (-2), [Nenhum, Carro]), (Estrada 2, [Nenhum, Carro]), (Estrada (-2), [Nenhum, Carro]), (Estrada 2, [Nenhum, Carro]), (Estrada (-2), [Nenhum, Carro])]) = [Rio 0, Relva]
-}

proximosTerrenosValidos :: Mapa -> [Terreno]
proximosTerrenosValidos (Mapa _ []) = [Estrada 0, Rio 0, Relva]
proximosTerrenosValidos (Mapa largura ((Rio _, _):(Rio _, _):(Rio _, _):(Rio _, _):t)) = [Estrada 0, Relva]
proximosTerrenosValidos (Mapa largura ((Estrada _, _):(Estrada _, _):(Estrada _, _):(Estrada _, _):(Estrada _, _):t)) = [Rio 0, Relva]
proximosTerrenosValidos (Mapa largura ((Relva, _):(Relva, _):(Relva, _):(Relva, _):(Relva, _):t)) = [Rio 0, Estrada 0]
proximosTerrenosValidos (Mapa _ linhas) = [Estrada 0, Rio 0, Relva]

-- **Função 'proximosObstaculosValidosAux'
{- | A função 'proximosObstaculosValidos' recebe um __Inteiro__ (largura do mapa) e um __Tuplo__ (linha representada por (terreno, obs)) e dá como resultado uma __[Obstaculo]__, a qual corresponde à lista de obstáculos possíveis.
Desta forma, determina -se a lista de obstáculos (que entrega à função a lista de possibilidades de Obstáculos possíveis geral).

@
proximosObstaculosValidosAux :: Int -> (Terreno, [Obstaculo]) -> [Obstaculo]
proximosObstaculosValidosAux largura (Rio _, obs) = [Tronco, Nenhum]
proximosObstaculosValidosAux largura (Estrada _, obs) = [Carro, Nenhum]
proximosObstaculosValidosAux largura (Relva, obs) = [Nenhum, Arvore]
@

== Exemplo de utilização:
>>> proximosObstaculosValidos 2 (Rio 2, []) = [Tronco, Nenhum]
>>> proximosObstaculosValidos 2 (Rio 2, [Tronco, Nenhum]) = []
-}

proximosObstaculosValidosAux :: Int -> (Terreno, [Obstaculo]) -> [Obstaculo]
proximosObstaculosValidosAux largura (Rio _, obs) = [Tronco, Nenhum]
proximosObstaculosValidosAux largura (Estrada _, obs) = [Carro, Nenhum]
proximosObstaculosValidosAux largura (Relva, obs) = [Nenhum, Arvore]
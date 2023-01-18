module Tarefa5_2022li1g010_Spec where

import LI12223
import Tarefa5_2022li1g010
import Test.HUnit

-- Testa alguns deslizes aleatórios

testsT1 :: Test 
testsT1 = TestLabel "Testa deslizaJogo aleatoriamente" $ test ["Teste 1" ~: Jogo (Jogador (1,2)) (Mapa 2 [(Estrada (-3),[Nenhum,Nenhum]),(Rio 2,[Tronco,Nenhum])]) ~=? deslizaJogo 12 (Jogo (Jogador (1,1)) (Mapa 2 [(Rio 2, [Tronco, Nenhum]), (Estrada 2, [Carro, Nenhum])]))]

testsT2 :: Test 
testsT2 = TestLabel "Testa deslizaJogo aleatoriamente" $ test ["Teste 2" ~: Jogo (Jogador (1,2)) (Mapa 2 [(Estrada (-3),[Nenhum,Nenhum]),(Rio 2,[Tronco,Nenhum])]) ~=? deslizaJogo 18 (Jogo (Jogador (1,1)) (Mapa 2 [(Rio 2, [Tronco, Nenhum]), (Estrada 2, [Carro, Nenhum])]))]

testsT3 :: Test 
testsT3 = TestLabel "Testa deslizaJogo aleatoriamente" $ test ["Teste 3" ~: Jogo (Jogador (1,2)) (Mapa 2 [(Relva,[Nenhum,Arvore]),(Rio 2,[Tronco,Nenhum])]) ~=? deslizaJogo 89 (Jogo (Jogador (1,1)) (Mapa 2 [(Rio 2, [Tronco, Nenhum]), (Estrada 2, [Nenhum, Nenhum])]))]

testsT4 :: Test 
testsT4 = TestLabel "Testa deslizaJogo aleatoriamente" $ test ["Teste 4" ~: Jogo (Jogador (1,2)) (Mapa 2 [(Rio (-2),[Nenhum,Tronco]),(Rio 2,[Tronco,Nenhum])]) ~=? deslizaJogo 34 (Jogo (Jogador (1,1)) (Mapa 2 [(Rio 2, [Tronco, Nenhum]), (Estrada 2, [Carro, Nenhum])]))]

testsT5 :: Test 
testsT5 = TestLabel "Testa deslizaJogo aleatoriamente" $ test ["Teste 5" ~: Jogo (Jogador (1,2)) (Mapa 2 [(Relva,[Nenhum,Nenhum]),(Estrada 2,[Carro,Nenhum]),(Rio 2,[Nenhum,Tronco])]) ~=? deslizaJogo 98 (Jogo (Jogador (1,1)) (Mapa 2 [(Estrada 2,[Carro,Nenhum]),(Rio 2,[Nenhum,Tronco]),(Rio (-4),[Nenhum,Tronco])]))]

testsT6 :: Test 
testsT6 = TestLabel "Testa deslizaJogo aleatoriamente" $ test ["Teste 6" ~: Jogo (Jogador (1,2)) (Mapa 2 [(Estrada 1,[Nenhum,Nenhum]),(Estrada 2,[Carro,Nenhum]),(Rio 2,[Nenhum,Tronco])]) ~=? deslizaJogo 3 (Jogo (Jogador (1,1)) (Mapa 2 [(Estrada 2,[Carro,Nenhum]),(Rio 2,[Nenhum,Tronco]),(Rio (-4),[Nenhum,Tronco])]))]

testesTarefa5 = (TestList [testsT1, 
                           testsT2, 
                           testsT3, 
                           testsT4,
                           testsT5, 
                           testsT6
                          ])
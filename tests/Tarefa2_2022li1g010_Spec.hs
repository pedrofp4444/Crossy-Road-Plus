module Tarefa2_2022li1g010_Spec where

import LI12223
import Tarefa2_2022li1g010
import Test.HUnit

-- Testa os proximosTerrenoValidos

testsT1 :: Test
testsT1 = TestLabel "Testa proximosTerrenosValidos" $ test ["Teste 1" ~: [Estrada 0, Rio 0, Relva] ~=? proximosTerrenosValidos (Mapa 2 [(Rio 2, [Nenhum, Tronco]), (Estrada (-1), [Nenhum, Carro]), (Estrada 2, [Nenhum, Carro]), (Relva, [Nenhum, Arvore])])]

testsT2 :: Test
testsT2 = TestLabel "Testa proximosTerrenosValidos" $ test ["Teste 2" ~: [Estrada 0, Relva] ~=? proximosTerrenosValidos (Mapa 2 [(Rio (-2), [Nenhum, Tronco]), (Rio 2, [Nenhum, Tronco]), (Rio (-2), [Nenhum, Tronco]), (Rio 2, [Nenhum, Tronco])])]

testsT3 :: Test
testsT3 = TestLabel "Testa proximosTerrenosValidos" $ test ["Teste 3" ~: [Rio 0, Relva] ~=? proximosTerrenosValidos (Mapa 2 [(Estrada (-2), [Nenhum, Carro]), (Estrada 2, [Nenhum, Carro]), (Estrada (-2), [Nenhum, Carro]), (Estrada 2, [Nenhum, Carro]), (Estrada (-2), [Nenhum, Carro])])]

testsT4 :: Test
testsT4 = TestLabel "Testa proximosTerrenosValidos" $ test ["Teste 4" ~: [Rio 0, Estrada 0] ~=? proximosTerrenosValidos (Mapa 2 [(Relva, [Nenhum, Arvore]), (Relva, [Nenhum, Arvore]), (Relva, [Nenhum, Arvore]), (Relva, [Nenhum, Arvore]), (Relva, [Nenhum, Arvore])])]

-- Testa os proximosObstaculosValidos

testsT6 :: Test
testsT6 = TestLabel "Testa proximosObstaculosValidos Rio" $ test ["Teste 6" ~: [Tronco, Nenhum] ~=? proximosObstaculosValidosAux 2 (Rio 2, [])]

testsT7 :: Test
testsT7 = TestLabel "Testa proximosObstaculosValidos Estrada" $ test ["Teste 7" ~: [Carro, Nenhum] ~=? proximosObstaculosValidosAux 2 (Estrada 4, [])]

testsT8 :: Test
testsT8 = TestLabel "Testa proximosObstaculosValidos Relva" $ test ["Teste 8" ~: [Nenhum, Arvore] ~=? proximosObstaculosValidosAux 2 (Relva, [])]

-- Testar alguns aleatórios 

testsT9 :: Test 
testsT9 = TestLabel "Testa estendeMapa aleatoriamente" $ test ["Teste 9" ~: Mapa 2 [(Estrada (-3),[Nenhum,Nenhum]),(Rio 2,[Tronco,Nenhum]),(Estrada 2,[Carro,Nenhum])] ~=? estendeMapa (Mapa 2 [(Rio 2, [Tronco, Nenhum]), (Estrada 2, [Carro, Nenhum])]) 12]

testsT10 :: Test 
testsT10 = TestLabel "Testa estendeMapa aleatoriamente" $ test ["Teste 10" ~: Mapa 2 [(Estrada (-3),[Nenhum,Nenhum]),(Rio 2,[Tronco,Nenhum]),(Estrada 2,[Carro,Nenhum])] ~=? estendeMapa (Mapa 2 [(Rio 2, [Tronco, Nenhum]), (Estrada 2, [Carro, Nenhum])]) 18]

testsT11 :: Test 
testsT11 = TestLabel "Testa estendeMapa aleatoriamente" $ test ["Teste 11" ~: Mapa 2 [(Relva,[Nenhum,Arvore]),(Rio 2,[Tronco,Nenhum]),(Estrada 2,[Carro,Nenhum])] ~=? estendeMapa (Mapa 2 [(Rio 2, [Tronco, Nenhum]), (Estrada 2, [Carro, Nenhum])]) 89]

testsT12 :: Test 
testsT12 = TestLabel "Testa estendeMapa aleatoriamente" $ test ["Teste 12" ~: Mapa 2 [(Rio (-2),[Nenhum,Tronco]),(Rio 2,[Tronco,Nenhum]),(Estrada 2,[Carro,Nenhum])] ~=? estendeMapa (Mapa 2 [(Rio 2, [Tronco, Nenhum]), (Estrada 2, [Carro, Nenhum])]) 34]

testsT13 :: Test 
testsT13 = TestLabel "Testa estendeMapa aleatoriamente" $ test ["Teste 13" ~: Mapa 2 [(Relva,[Nenhum,Nenhum]),(Estrada 2,[Carro,Nenhum]),(Rio 2,[Nenhum,Tronco]),(Rio (-4),[Nenhum,Tronco])] ~=? estendeMapa (Mapa 2 [(Estrada 2,[Carro,Nenhum]),(Rio 2,[Nenhum,Tronco]),(Rio (-4),[Nenhum,Tronco])]) 98]

testsT14 :: Test 
testsT14 = TestLabel "Testa estendeMapa aleatoriamente" $ test ["Teste 13" ~: Mapa 2 [(Estrada 1,[Nenhum,Nenhum]),(Estrada 2,[Carro,Nenhum]),(Rio 2,[Nenhum,Tronco]),(Rio (-4),[Nenhum,Tronco])] ~=? estendeMapa (Mapa 2 [(Estrada 2,[Carro,Nenhum]),(Rio 2,[Nenhum,Tronco]),(Rio (-4),[Nenhum,Tronco])]) 3]


testesTarefa2 = (TestList [testsT1, 
                           testsT2, 
                           testsT3, 
                           testsT4,  
                           testsT6,
                           testsT7,
                           testsT8,
                           testsT9,
                           testsT10,
                           testsT11,
                           testsT12,
                           testsT13,
                           testsT14
                          ])
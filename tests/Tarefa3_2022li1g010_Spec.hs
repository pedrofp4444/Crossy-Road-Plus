module Tarefa3_2022li1g010_Spec where

import LI12223
import Tarefa3_2022li1g010
import Test.HUnit

-- Testes animaJogo 

testsT2 :: Test
testsT2 = TestLabel "Testa movimento de um jogador numa estrada (movimento normal)" $ test ["Teste 2" ~:Jogo (Jogador (2,2)) (Mapa 5 [(Rio 1,[Nenhum,Nenhum,Tronco,Tronco,Nenhum]),(Rio 1,[Tronco,Tronco,Tronco,Nenhum,Nenhum]),(Estrada 2,[Carro,Nenhum,Carro,Carro,Nenhum])]) ~=? animaJogo (Jogo (Jogador (1,2)) (Mapa 5 [(Rio 1, [Nenhum,Tronco,Tronco,Nenhum,Nenhum]),
                                                                                                                                                                                                                                                                                                                     (Rio 1, [Tronco,Tronco,Nenhum,Nenhum,Tronco]),
                                                                                                                                                                                                                                                                                                                     (Estrada 2,[Carro,Nenhum,Carro,Carro,Nenhum])])) (Move Direita)]
testsT3 :: Test
testsT3 = TestLabel "Testa movimento de um jogador que se movimenta a direita e esta sobre um tronco" $ test ["Teste 3" ~: Jogo (Jogador (4,0)) (Mapa 5 [(Rio 1,[Nenhum,Nenhum,Tronco,Tronco,Nenhum]),(Rio 1,[Tronco,Tronco,Tronco,Nenhum,Nenhum]),(Relva,[Nenhum,Nenhum,Arvore,Arvore,Nenhum])]) ~=? animaJogo (Jogo (Jogador (2,0)) (Mapa 5 [(Rio 1, [Nenhum,Tronco,Tronco,Nenhum,Nenhum]),
                                                                                                                                                                                                                                                                                                                                               (Rio 1, [Tronco,Tronco,Nenhum,Nenhum,Tronco]),
                                                                                                                                                                                                                                                                                                                                               (Relva,[Nenhum,Nenhum,Arvore,Arvore,Nenhum])])) (Move Direita)] 

testsT4 :: Test                                            
testsT4 = TestLabel "Testa movimento de um jogador que se movimenta para baixo estando sobre um tronco" $ test ["Teste 4" ~: Jogo (Jogador (2,1)) (Mapa 5 [(Rio 1,[Nenhum,Nenhum,Tronco,Tronco,Nenhum]),(Rio 1,[Tronco,Tronco,Tronco,Nenhum,Nenhum]),(Relva,[Nenhum,Nenhum,Arvore,Arvore,Nenhum])]) ~=? animaJogo (Jogo (Jogador (2,0)) (Mapa 5 [(Rio 1, [Nenhum,Tronco,Tronco,Nenhum,Nenhum]),
                                                                                                                                                                                                                                                                                                                                                 (Rio 1, [Tronco,Tronco,Nenhum,Nenhum,Tronco]),
                                                                                                                                                                                                                                                                                                                                                 (Relva,[Nenhum,Nenhum,Arvore,Arvore,Nenhum])])) (Move Baixo)]

testsT5 :: Test
testsT5 = TestLabel "Testa movimento de um jogador que tenta movimentar-se a direita lugar onde se encontra uma arvore" $ test ["Teste 5" ~: Jogo (Jogador (1,2)) (Mapa 5 [(Rio 1,[Nenhum,Nenhum,Tronco,Tronco,Nenhum]),(Rio 1,[Tronco,Tronco,Tronco,Nenhum,Nenhum]),(Relva,[Nenhum,Nenhum,Arvore,Arvore,Nenhum])]) ~=? animaJogo (Jogo (Jogador (1,2)) (Mapa 5 [(Rio 1, [Nenhum,Tronco,Tronco,Nenhum,Nenhum]),
                                                                                                                                                                                                                                                                                                                                                               (Rio 1, [Tronco,Tronco,Nenhum,Nenhum,Tronco]),
                                                                                                                                                                                                                                                                                                                                                               (Relva,[Nenhum,Nenhum,Arvore,Arvore,Nenhum])])) (Move Direita)]
testsT6 :: Test
testsT6 = TestLabel "Testa movimento de um jogador que tenta movimentar-se a esquerda lugar onde se encontra uma arvore" $ test ["Teste 6" ~: Jogo (Jogador (4,2)) (Mapa 5 [(Rio 1,[Nenhum,Nenhum,Tronco,Tronco,Nenhum]),(Rio 1,[Tronco,Tronco,Tronco,Nenhum,Nenhum]),(Relva,[Nenhum,Nenhum,Arvore,Arvore,Nenhum])]) ~=? animaJogo (Jogo (Jogador (4,2)) (Mapa 5 [(Rio 1, [Nenhum,Tronco,Tronco,Nenhum,Nenhum]),
                                                                                                                                                                                                                                                                                                                                                                  (Rio 1, [Tronco,Tronco,Nenhum,Nenhum,Tronco]),
                                                                                                                                                                                                                                                                                                                                                                  (Relva,[Nenhum,Nenhum,Arvore,Arvore,Nenhum])])) (Move Esquerda)]

testsT7 :: Test
testsT7 = TestLabel "Testa movimento de um jogador que se movimenta a esquerda e encotra-se num tronco com velocidade 1" $ test ["Teste 7" ~: Jogo (Jogador (4,1)) (Mapa 5 [(Rio 1,[Nenhum,Nenhum,Tronco,Tronco,Nenhum]),(Rio 1,[Tronco,Tronco,Tronco,Nenhum,Nenhum]),(Relva,[Nenhum,Nenhum,Arvore,Arvore,Nenhum])]) ~=? animaJogo (Jogo (Jogador (4,1)) (Mapa 5 [(Rio 1, [Nenhum,Tronco,Tronco,Nenhum,Nenhum]),
                                                                                                                                                                                                                                                                                                                                                                 (Rio 1, [Tronco,Tronco,Nenhum,Nenhum,Tronco]),
                                                                                                                                                                                                                                                                                                                                                                 (Relva,[Nenhum,Nenhum,Arvore,Arvore,Nenhum])])) (Move Esquerda)]

testsT8 :: Test
testsT8 = TestLabel "Jogador sai do mapa quando esta para num tronco com velocidade e encontra-se no limite da linha" $ test ["Teste 8" ~: Jogo (Jogador (5,1)) (Mapa 5 [(Rio 1,[Nenhum,Nenhum,Tronco,Tronco,Nenhum]),(Rio 1,[Tronco,Tronco,Tronco,Nenhum,Nenhum]),(Relva,[Nenhum,Nenhum,Arvore,Arvore,Nenhum])]) ~=? animaJogo (Jogo (Jogador (4,1)) (Mapa 5 [(Rio 1, [Nenhum,Tronco,Tronco,Nenhum,Nenhum]),
                                                                                                                                                                                                                                                                                                                                                               (Rio 1, [Tronco,Tronco,Nenhum,Nenhum,Tronco]),
                                                                                                                                                                                                                                                                                                                                                               (Relva,[Nenhum,Nenhum,Arvore,Arvore,Nenhum])])) Parado ]

testsT9 :: Test
testsT9 = TestLabel "Testa movimento de um jogador que se encontra num tronco cujo rio tem velocidade negativa" $ test ["Teste 9" ~: Jogo (Jogador (3,1)) (Mapa 5 [(Rio 1,[Nenhum,Nenhum,Tronco,Tronco,Nenhum]),(Rio (-1),[Tronco,Nenhum,Nenhum,Tronco,Tronco]),(Relva,[Nenhum,Nenhum,Arvore,Arvore,Nenhum])]) ~=? animaJogo (Jogo (Jogador (4,1)) (Mapa 5 [(Rio 1, [Nenhum,Tronco,Tronco,Nenhum,Nenhum]),
                                                                                                                                                                                                                                                                                                                                                            (Rio (-1), [Tronco,Tronco,Nenhum,Nenhum,Tronco]),
                                                                                                                                                                                                                                                                                                                                                            (Relva,[Nenhum,Nenhum,Arvore,Arvore,Nenhum])])) Parado ]

testsT10 :: Test
testsT10 = TestLabel "Testa movimento de um jogador sobre um tronco que tenta ir para cima, mas encontra-se com uma arvore a sua frente" $ test ["Teste 10" ~: Jogo (Jogador (0,1)) (Mapa 5 [(Relva,[Nenhum,Arvore,Arvore,Nenhum,Nenhum]),(Rio (-1),[Tronco,Nenhum,Nenhum,Tronco,Tronco]),(Relva,[Nenhum,Nenhum,Arvore,Arvore,Nenhum])]) ~=? animaJogo (Jogo (Jogador (1,1)) (Mapa 5 [(Relva, [Nenhum,Arvore,Arvore,Nenhum,Nenhum]),
                                                                                                                                                                                                                                                                                                                                                                                   (Rio (-1), [Tronco,Tronco,Nenhum,Nenhum,Tronco]),
                                                                                                                                                                                                                                                                                                                                                                                   (Relva,[Nenhum,Nenhum,Arvore,Arvore,Nenhum])])) (Move Cima)]

testsT11 :: Test
testsT11 = TestLabel "Testa movimento de um jogador que se encontra num tronco cujo rio tem velocidade negativa e este efetua um movimento a direita" $ test ["Teste 11" ~: Jogo (Jogador (4,1)) (Mapa 5 [(Rio 1,[Nenhum,Nenhum,Tronco,Tronco,Nenhum]),(Rio (-1),[Tronco,Nenhum,Nenhum,Tronco,Tronco]),(Relva,[Nenhum,Nenhum,Arvore,Arvore,Nenhum])]) ~=? animaJogo (Jogo (Jogador (4,1)) (Mapa 5 [(Rio 1, [Nenhum,Tronco,Tronco,Nenhum,Nenhum]),
                                                                                                                                                                                                                                                                                                                                                                                                   (Rio (-1), [Tronco,Tronco,Nenhum,Nenhum,Tronco]),
                                                                                                                                                                                                                                                                                                                                                                                                   (Relva,[Nenhum,Nenhum,Arvore,Arvore,Nenhum])])) (Move Direita) ]
testsT12 :: Test 
testsT12 = TestLabel "Testa movimento quando jogador é atropelhado" $ test  ["Teste 12" ~: Jogo (Jogador (3,0)) (Mapa 6 [(Estrada 3,[Nenhum,Carro,Nenhum,Carro,Nenhum,Nenhum])]) ~=? animaJogo (Jogo (Jogador (3, 0)) (Mapa 6 [(Estrada 3, [Carro, Nenhum, Carro, Nenhum, Nenhum, Nenhum])])) (Parado)]


testesTarefa3 =  (TestList [testsT2,
                            testsT3,     
                            testsT4,                              
                            testsT5, 
                            testsT6,
                            testsT7,
                            testsT8,
                            testsT9,
                            testsT10,
                            testsT11,
                            testsT12
                           ])
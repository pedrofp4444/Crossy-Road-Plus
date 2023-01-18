module Tarefa4_2022li1g010_Spec where

import LI12223
import Tarefa4_2022li1g010
import Test.HUnit

-- Testa se o jogo termina

testsT1 :: Test
testsT1 = TestLabel "Testa se um jogador está na água " $ test ["Teste 1" ~: True ~=? jogoTerminou (Jogo (Jogador (1,2)) (Mapa 3 [(Rio 1,    [Tronco, Nenhum, Tronco, Tronco, Tronco]),
                                                                                                                                  (Rio (-1), [Nenhum, Nenhum, Tronco, Tronco, Tronco]),
                                                                                                                                  (Rio 1,    [Tronco, Nenhum, Tronco, Nenhum, Nenhum])
                                                                                                                                 ]))]   

testsT2 :: Test
testsT2 = TestLabel "Testa se um jogador está atropelado " $ test ["Teste 2" ~: True ~=? jogoTerminou (Jogo (Jogador (0,2)) (Mapa 3 [(Estrada 1, [Carro, Nenhum, Nenhum, Carro, Carro]),
                                                                                                                                     (Estrada 1, [Nenhum, Nenhum, Carro, Carro, Carro]),
                                                                                                                                     (Estrada 1, [Carro, Nenhum, Carro, Nenhum, Nenhum])
                                                                                                                                    ]))]

testsT3 :: Test
testsT3 = TestLabel "Testa se um jogador está no Tronco " $ test ["Teste 3" ~: False ~=? jogoTerminou (Jogo (Jogador (2,2)) (Mapa 3 [(Rio 1,    [Tronco, Nenhum, Tronco, Tronco, Tronco]),
                                                                                                                                     (Rio (-1), [Nenhum, Nenhum, Tronco, Tronco, Tronco]),
                                                                                                                                     (Rio 1,    [Tronco, Nenhum, Tronco, Nenhum, Nenhum])
                                                                                                                                    ]))]

testsT4 :: Test
testsT4 = TestLabel "Testa se um jogador está no Nenhum " $ test ["Teste 4" ~: False ~=? jogoTerminou (Jogo (Jogador (0,1)) (Mapa 3 [(Estrada 1, [Carro, Nenhum, Nenhum, Carro, Carro]),
                                                                                                                                     (Estrada 1, [Nenhum, Nenhum, Carro, Carro, Carro]),
                                                                                                                                     (Estrada 1, [Carro, Nenhum, Carro, Nenhum, Nenhum])
                                                                                                                                    ]))]

-- Testes se está no mapa

testsT5 :: Test
testsT5 = TestLabel "Testa se um jogador está no mapa " $ test ["Teste 5" ~: False ~=? jogoTerminou (Jogo (Jogador (0,1)) (Mapa 3 [(Estrada 1, [Carro, Nenhum, Nenhum, Carro, Carro]),
                                                                                                                                   (Estrada 1, [Nenhum, Nenhum, Carro, Carro, Carro]),
                                                                                                                                   (Estrada 1, [Carro, Nenhum, Carro, Nenhum, Nenhum])
                                                                                                                                  ]))]

testsT6 :: Test
testsT6 = TestLabel "Testa se um jogador está fora do mapa " $ test ["Teste 6" ~: True ~=? jogoTerminou (Jogo (Jogador (0,3)) (Mapa 3 [(Estrada 1, [Carro, Nenhum, Nenhum, Carro, Carro]),
                                                                                                                                       (Estrada 1, [Nenhum, Nenhum, Carro, Carro, Carro]),
                                                                                                                                       (Estrada 1, [Carro, Nenhum, Carro, Nenhum, Nenhum])
                                                                                                                                      ]))]

testesTarefa4 = (TestList [testsT1, 
                           testsT2, 
                           testsT3, 
                           testsT4,
                           testsT5, 
                           testsT6
                          ])
module Tarefa1_2022li1g010_Spec where

import LI12223
import Tarefa1_2022li1g010
import Test.HUnit

-- Testar se há objetos inválidos:

-- RIO

testsT1 :: Test
testsT1 = TestLabel "Testa se há Tronco e Nenhum no Rio (primeiro caso)" $ test ["Teste 1" ~: True ~=? mapaValido (Mapa 2 [(Rio 2,        [Nenhum, Tronco]),
                                                                                                                           (Estrada (-1), [Nenhum, Carro]),
                                                                                                                           (Estrada 2,    [Nenhum, Carro]),
                                                                                                                           (Relva,        [Nenhum, Arvore])
                                                                                                                          ])]
testsT2 :: Test 
testsT2 = TestLabel "Testa se há Tronco e Nenhum no Rio (recursivamente)" $ test ["Teste 2" ~: True ~=? mapaValido (Mapa 2 [(Estrada 2, [Nenhum, Carro]),
                                                                                                                            (Rio (-1),  [Nenhum, Tronco]),
                                                                                                                            (Rio 2,     [Nenhum, Tronco]),
                                                                                                                            (Rio (-1),  [Nenhum, Tronco])
                                                                                                                           ])]
testsT3 :: Test
testsT3 = TestLabel "Testa se há Carro no Rio (primeiro caso)" $ test ["Teste 3" ~: False ~=? mapaValido (Mapa 2 [(Rio 2,    [Nenhum, Carro]),
                                                                                                                  (Rio (-1), [Nenhum, Tronco]),
                                                                                                                  (Rio 2,    [Nenhum, Tronco]),
                                                                                                                  (Rio (-1), [Nenhum, Tronco])
                                                                                                                 ])]
testsT4 :: Test
testsT4 = TestLabel "Testa se há Arvore no Rio (primeiro caso)" $ test ["Teste 4" ~: False ~=? mapaValido (Mapa 2 [(Rio 2,    [Nenhum, Arvore]),
                                                                                                                   (Rio (-1), [Nenhum, Tronco]),
                                                                                                                   (Rio 2,    [Nenhum, Tronco]),
                                                                                                                   (Rio (-1), [Nenhum, Tronco])
                                                                                                                  ])]
testsT5 :: Test
testsT5 = TestLabel "Testa se há Carro no Rio (recursivamente)" $ test ["Teste 5" ~: False ~=? mapaValido (Mapa 2 [(Rio 2,    [Nenhum, Tronco]),
                                                                                                                   (Rio (-1), [Nenhum, Tronco]),
                                                                                                                   (Rio 2,    [Nenhum, Carro]),
                                                                                                                   (Rio (-1), [Nenhum, Tronco])
                                                                                                                  ])]
testsT6 :: Test
testsT6 = TestLabel "Testa se há Arvore no Rio (recursivamente)" $ test ["Teste 6" ~: False ~=? mapaValido (Mapa 2 [(Rio 2,    [Nenhum, Tronco]),
                                                                                                                    (Rio (-1), [Nenhum, Tronco]),
                                                                                                                    (Rio 2,    [Nenhum, Tronco]),
                                                                                                                    (Rio (-1), [Nenhum, Arvore])
                                                                                                                   ])]

-- ESTRADA

testsT7 :: Test
testsT7 = TestLabel "Testa se há Carro e Nenhum na Estrada (primeiro caso)" $ test ["Teste 7" ~: True ~=? mapaValido (Mapa 2 [(Estrada 2, [Nenhum, Carro]),
                                                                                                                              (Rio (-1),  [Nenhum, Tronco]),
                                                                                                                              (Rio 2,     [Nenhum, Tronco]),
                                                                                                                              (Rio (-1),  [Nenhum, Tronco])
                                                                                                                             ])]
testsT8 :: Test 
testsT8 = TestLabel "Testa se há Carro e Nenhum na Estrada (recursivamente)" $ test ["Teste 8" ~: True ~=? mapaValido (Mapa 2 [(Rio 2,     [Nenhum, Tronco]),
                                                                                                                               (Rio (-1),  [Nenhum, Tronco]),
                                                                                                                               (Estrada 2, [Nenhum, Carro]),
                                                                                                                               (Rio (-1),  [Nenhum, Tronco])
                                                                                                                              ])]
testsT9 :: Test
testsT9 = TestLabel "Testa se há Tronco na Estrada (primeiro caso)" $ test ["Teste 9" ~: False ~=? mapaValido (Mapa 2 [(Estrada 2, [Nenhum, Tronco]),
                                                                                                                       (Rio (-1),  [Nenhum, Tronco]),
                                                                                                                       (Rio 2,     [Nenhum, Tronco]),
                                                                                                                       (Rio (-1),  [Nenhum, Tronco])
                                                                                                                      ])]
testsT10 :: Test
testsT10 = TestLabel "Testa se há Arvore na Estrada (primeiro caso)" $ test ["Teste 10" ~: False ~=? mapaValido (Mapa 2 [(Estrada 2, [Nenhum, Arvore]),
                                                                                                                         (Rio (-1),  [Nenhum, Tronco]),
                                                                                                                         (Rio 2,     [Nenhum, Tronco]),
                                                                                                                         (Rio (-1),  [Nenhum, Tronco])
                                                                                                                        ])]
testsT11 :: Test
testsT11 = TestLabel "Testa se há Tronco na Estrada (recursivamente)" $ test ["Teste 11" ~: False ~=? mapaValido (Mapa 2 [(Estrada 2, [Nenhum, Carro]),
                                                                                                                          (Rio (-1),  [Nenhum, Tronco]),
                                                                                                                          (Estrada 2, [Nenhum, Tronco]),
                                                                                                                          (Rio (-1),  [Nenhum, Tronco])
                                                                                                                         ])]
testsT12 :: Test
testsT12 = TestLabel "Testa se há Arvore na Estrada (recursivamente)" $ test ["Teste 12" ~: False ~=? mapaValido (Mapa 2 [(Rio 2,        [Nenhum, Tronco]),
                                                                                                                          (Rio (-1),     [Nenhum, Tronco]),
                                                                                                                          (Rio 2,        [Nenhum, Tronco]),
                                                                                                                          (Estrada (-1), [Nenhum, Arvore])
                                                                                                                         ])]

-- RELVA

testsT13 :: Test
testsT13 = TestLabel "Testa se há Arvore e Nenhum na Relva (primeiro caso)" $ test ["Teste 13" ~: True ~=? mapaValido (Mapa 2 [(Relva, [Nenhum, Arvore]),
                                                                                                                               (Relva, [Nenhum, Arvore]),
                                                                                                                               (Relva, [Nenhum, Arvore]),
                                                                                                                               (Relva, [Nenhum, Arvore])
                                                                                                                              ])]
testsT14 :: Test 
testsT14 = TestLabel "Testa se há Arvore e Nenhum na Relva (recursivamente)" $ test ["Teste 14" ~: True ~=? mapaValido (Mapa 2 [(Rio 2,    [Nenhum, Tronco]),
                                                                                                                                (Rio (-1), [Nenhum, Tronco]),
                                                                                                                                (Relva,    [Nenhum, Arvore]),
                                                                                                                                (Rio (-1), [Nenhum, Tronco])
                                                                                                                               ])]
testsT15 :: Test
testsT15 = TestLabel "Testa se há Tronco na Relva (primeiro caso)" $ test ["Teste 15" ~: False ~=? mapaValido (Mapa 2 [(Relva,    [Nenhum, Tronco]),
                                                                                                                       (Rio (-1), [Nenhum, Tronco]),
                                                                                                                       (Rio 2,    [Nenhum, Tronco]),
                                                                                                                       (Rio (-1), [Nenhum, Tronco])
                                                                                                                      ])]
testsT16 :: Test
testsT16 = TestLabel "Testa se há Carro na Relva (primeiro caso)" $ test ["Teste 16" ~: False ~=? mapaValido (Mapa 2 [(Relva, [Nenhum, Carro]),
                                                                                                                      (Rio (-1), [Nenhum, Tronco]),
                                                                                                                      (Rio 2, [Nenhum, Tronco]),
                                                                                                                      (Rio (-1), [Nenhum, Tronco])
                                                                                                                     ])]
testsT17 :: Test
testsT17 = TestLabel "Testa se há Tronco na Relva (recursivamente)" $ test ["Teste 17" ~: False ~=? mapaValido (Mapa 2 [(Estrada 2, [Nenhum, Carro]),
                                                                                                                        (Rio (-1),  [Nenhum, Tronco]),
                                                                                                                        (Relva,     [Nenhum, Tronco]),
                                                                                                                        (Rio (-1),  [Nenhum, Tronco])
                                                                                                                       ])]
testsT18 :: Test
testsT18 = TestLabel "Testa se há Carro na Relva (recursivamente)" $ test ["Teste 18" ~: False ~=? mapaValido (Mapa 2 [(Rio 2,    [Nenhum, Tronco]),
                                                                                                                       (Rio (-1), [Nenhum, Tronco]),
                                                                                                                       (Rio 2,    [Nenhum, Tronco]),
                                                                                                                       (Relva,    [Nenhum, Carro])
                                                                                                                      ])]

-- Testar se a largura é válida

testsT19 :: Test
testsT19 = TestLabel "Testa a largura (primeiro caso)" $ test ["Teste 19" ~: False ~=? mapaValido (Mapa 2 [(Rio 2,    [Nenhum, Tronco, Nenhum]),
                                                                                                           (Rio (-1), [Nenhum, Tronco]),
                                                                                                           (Rio 2,    [Nenhum, Tronco]),
                                                                                                           (Relva,    [Nenhum, Arvore])
                                                                                                          ])]
testsT20 :: Test
testsT20 = TestLabel "Testa a largura (recursivamente)" $ test ["Teste 20" ~: False ~=? mapaValido (Mapa 2 [(Rio 2,    [Nenhum, Tronco]),
                                                                                                            (Rio (-1), [Nenhum, Tronco]),
                                                                                                            (Rio 2,    [Nenhum, Tronco]),
                                                                                                            (Relva,    [Nenhum, Arvore, Arvore])
                                                                                                           ])]

-- Testar rios contiguos 

testsT21 :: Test
testsT21 = TestLabel "Testa rios contiguos (recursivamente)" $ test ["Teste 21" ~: True ~=? mapaValido (Mapa 2 [(Rio 2,    [Nenhum, Tronco]),
                                                                                                                (Rio (-1), [Nenhum, Tronco]),
                                                                                                                (Rio 2,    [Nenhum, Tronco]),
                                                                                                                (Relva,    [Nenhum, Arvore])
                                                                                                               ])]
testsT22 :: Test
testsT22 = TestLabel "Testa rios contiguos (recursivamente)" $ test ["Teste 22" ~: False ~=? mapaValido (Mapa 2 [(Rio 2,    [Nenhum, Tronco]),
                                                                                                                 (Rio (-1), [Nenhum, Tronco]),
                                                                                                                 (Rio (-1), [Nenhum, Tronco]),
                                                                                                                 (Relva,    [Nenhum, Arvore])
                                                                                                                ])]

-- Testar máximo de 5 troncos no Rio 

testsT23 :: Test
testsT23 = TestLabel "Testa máximo de 5 troncos (recursivamente)" $ test ["Teste 23" ~: True ~=? mapaValido (Mapa 10 [(Rio 2,    [Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Tronco, Tronco, Nenhum]),
                                                                                                                      (Rio (-2), [Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Tronco, Tronco, Nenhum]),
                                                                                                                      (Rio 2,    [Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Tronco, Tronco, Nenhum]),
                                                                                                                      (Rio (-2), [Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Tronco, Tronco, Nenhum])
                                                                                                                     ])]

testsT24 :: Test
testsT24 = TestLabel "Testa máximo de 5 troncos (recursivamente)" $ test ["Teste 24" ~: False ~=? mapaValido (Mapa 10 [(Rio 2,    [Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Tronco, Tronco, Tronco, Nenhum]),
                                                                                                                       (Rio (-2), [Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Tronco, Tronco, Nenhum]),
                                                                                                                       (Rio 2,    [Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Tronco, Tronco, Nenhum]),
                                                                                                                       (Rio (-2), [Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Tronco, Tronco, Nenhum])
                                                                                                                      ])]

testsT25 :: Test
testsT25 = TestLabel "Testa máximo de 5 troncos (recursivamente)" $ test ["Teste 25" ~: False ~=? mapaValido (Mapa 10 [(Rio 2,    [Tronco, Tronco, Tronco, Nenhum, Tronco, Tronco, Nenhum, Tronco, Tronco, Tronco]),
                                                                                                                       (Rio (-2), [Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Tronco, Tronco, Nenhum]),
                                                                                                                       (Rio 2,    [Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Tronco, Tronco, Nenhum]),
                                                                                                                       (Rio (-2), [Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Tronco, Tronco, Nenhum])
                                                                                                                      ])]


-- Testar máximo de 3 carros na Estrada 

testsT26 :: Test
testsT26 = TestLabel "Testa máximo de 3 Carros (recursivamente)" $ test ["Teste 26" ~: True ~=? mapaValido (Mapa 10 [(Estrada 2,    [Nenhum, Carro, Nenhum, Carro, Carro, Carro, Nenhum, Carro, Carro, Nenhum]),
                                                                                                                     (Estrada (-2), [Nenhum, Carro, Nenhum, Carro, Carro, Carro, Nenhum, Carro, Carro, Nenhum]),
                                                                                                                     (Estrada 2,    [Nenhum, Carro, Nenhum, Carro, Carro, Carro, Nenhum, Carro, Carro, Nenhum]),
                                                                                                                     (Estrada (-2), [Nenhum, Carro, Nenhum, Carro, Carro, Carro, Nenhum, Carro, Carro, Nenhum])
                                                                                                                    ])]

testsT27 :: Test 
testsT27 = TestLabel "Testa máximo de 3 Carros (recursivamente)" $ test ["Teste 27" ~: False ~=? mapaValido (Mapa 10 [(Estrada 2,    [Nenhum, Carro, Nenhum, Carro, Carro, Carro, Carro, Carro, Carro, Nenhum]),
                                                                                                                      (Estrada (-2), [Nenhum, Carro, Nenhum, Carro, Carro, Carro, Nenhum, Carro, Carro, Nenhum]),
                                                                                                                      (Estrada 2,    [Nenhum, Carro, Nenhum, Carro, Carro, Carro, Nenhum, Carro, Carro, Nenhum]),
                                                                                                                      (Estrada (-2), [Nenhum, Carro, Nenhum, Carro, Carro, Carro, Nenhum, Carro, Carro, Nenhum])
                                                                                                                     ])]

testsT28 :: Test 
testsT28 = TestLabel "Testa máximo de 3 Carros (recursivamente)" $ test ["Teste 28" ~: False ~=? mapaValido (Mapa 10 [(Estrada 2,    [Carro, Nenhum, Nenhum, Carro, Carro, Nenhum, Nenhum, Carro, Carro, Carro]),
                                                                                                                      (Estrada (-2), [Nenhum, Carro, Nenhum, Carro, Carro, Carro, Nenhum, Carro, Carro, Nenhum]),
                                                                                                                      (Estrada 2,    [Nenhum, Carro, Nenhum, Carro, Carro, Carro, Nenhum, Carro, Carro, Nenhum]),
                                                                                                                      (Estrada (-2), [Nenhum, Carro, Nenhum, Carro, Carro, Carro, Nenhum, Carro, Carro, Nenhum])
                                                                                                                     ])]

-- Precisa de existir pelo menos um nenhum 

testsT29 :: Test
testsT29 = TestLabel "Testa se há Nenhum no Rio (recursivamente)" $ test ["Teste 29" ~: False ~=? mapaValido (Mapa 2 [(Rio 2,        [Nenhum, Tronco]),
                                                                                                                      (Estrada (-1), [Nenhum, Carro]),
                                                                                                                      (Rio 2,        [Tronco, Tronco]),
                                                                                                                      (Relva,        [Nenhum, Arvore])
                                                                                                                     ])]
testsT30 :: Test 
testsT30 = TestLabel "Testa se há Nenhum na Estrada (recursivamente)" $ test ["Teste 30" ~: False ~=? mapaValido (Mapa 2 [(Rio 2,        [Nenhum, Tronco]),
                                                                                                                          (Estrada (-1), [Nenhum, Carro]),
                                                                                                                          (Estrada 2,    [Carro, Carro]),
                                                                                                                          (Relva,        [Nenhum, Arvore])
                                                                                                                         ])]
testsT31 :: Test
testsT31 = TestLabel "Testa se há Nenhum na Relva (recursivamente)" $ test ["Teste 31" ~: False ~=? mapaValido (Mapa 2 [(Rio 2,        [Nenhum, Tronco]),
                                                                                                                        (Estrada (-1), [Nenhum, Carro]),
                                                                                                                        (Estrada 2,    [Nenhum, Carro]),
                                                                                                                        (Relva,        [Arvore, Arvore])
                                                                                                                       ])]

-- Não podem existir mais do que 4 rios, nem 5 Estradas ou Relvas

testsT32 :: Test
testsT32 = TestLabel "Testa máximo de 4 Rios (recursivamente)" $ test ["Teste 32" ~: False ~=? mapaValido (Mapa 10 [(Rio 2,    [Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Tronco, Tronco, Nenhum]),
                                                                                                                    (Rio (-2), [Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Tronco, Tronco, Nenhum]),
                                                                                                                    (Rio 2,    [Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Tronco, Tronco, Nenhum]),
                                                                                                                    (Rio (-2), [Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Tronco, Tronco, Nenhum]),
                                                                                                                    (Rio 2,    [Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Tronco, Tronco, Nenhum])
                                                                                                                   ])]

testsT33 :: Test
testsT33 = TestLabel "Testa máximo de 5 Estradas (recursivamente)" $ test ["Teste 33" ~: False ~=? mapaValido (Mapa 10 [(Estrada 2,    [Nenhum, Carro, Nenhum, Carro, Carro, Carro, Nenhum, Carro, Carro, Nenhum]),
                                                                                                                        (Estrada (-2), [Nenhum, Carro, Nenhum, Carro, Carro, Carro, Nenhum, Carro, Carro, Nenhum]),
                                                                                                                        (Estrada 2,    [Nenhum, Carro, Nenhum, Carro, Carro, Carro, Nenhum, Carro, Carro, Nenhum]),
                                                                                                                        (Estrada 2,    [Nenhum, Carro, Nenhum, Carro, Carro, Carro, Nenhum, Carro, Carro, Nenhum]),
                                                                                                                        (Estrada 2,    [Nenhum, Carro, Nenhum, Carro, Carro, Carro, Nenhum, Carro, Carro, Nenhum]),
                                                                                                                        (Estrada (-2), [Nenhum, Carro, Nenhum, Carro, Carro, Carro, Nenhum, Carro, Carro, Nenhum])
                                                                                                                       ])]

testsT34 :: Test
testsT34 = TestLabel "Testa máximo de 5 Relvas (recursivamente)" $ test ["Teste 34" ~: False ~=? mapaValido (Mapa 10 [(Relva, [Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Nenhum, Arvore, Arvore, Nenhum]),
                                                                                                                      (Relva, [Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Nenhum, Arvore, Arvore, Nenhum]),
                                                                                                                      (Relva, [Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Nenhum, Arvore, Arvore, Nenhum]),
                                                                                                                      (Relva, [Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Nenhum, Arvore, Arvore, Nenhum]),
                                                                                                                      (Relva, [Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Nenhum, Arvore, Arvore, Nenhum]),
                                                                                                                      (Relva, [Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Nenhum, Arvore, Arvore, Nenhum])
                                                                                                                     ])]

testesTarefa1 = (TestList [testsT1,
                           testsT2,
                           testsT3,     
                           testsT4,                              
                           testsT5, 
                           testsT6,
                           testsT7,
                           testsT8,
                           testsT9, 
                           testsT10, 
                           testsT11,
                           testsT12,
                           testsT13, 
                           testsT14, 
                           testsT15,
                           testsT16,
                           testsT17,
                           testsT18,
                           testsT19,
                           testsT20,
                           testsT21,
                           testsT22,
                           testsT23,
                           testsT24,
                           testsT25,
                           testsT26,
                           testsT27,
                           testsT28,
                           testsT29,
                           testsT30,
                           testsT31,
                           testsT32,
                           testsT33,
                           testsT34
                          ])
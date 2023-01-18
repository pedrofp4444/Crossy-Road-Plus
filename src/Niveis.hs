{- |
Module      : Niveis
Description : Niveis para jogar.
Copyright   : Pedro Figueiredo Pereira <a104082@alunos.uminho.pt>
              Jorge Ubaldo Rodrigues Ferreira <a104096@alunos.uminho.pt>

Este módulo contem niveis que pretendemos que sejam utilizados para o menu Carreira.  
-}
module Niveis where

import LI12223

nivel1 :: Jogo
nivel1 = (Jogo (Jogador (6,15)) mapa1)

mapa1 :: Mapa
mapa1 = Mapa 13 [(Rio 2       ,[Tronco, Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Nenhum, Tronco]),
                 (Estrada 4   ,[Carro , Nenhum, Carro , Nenhum, Nenhum, Nenhum, Nenhum, Carro , Nenhum, Nenhum, Carro , Nenhum, Carro ]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore]),
                 (Rio (-1)    ,[Tronco, Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Nenhum, Tronco]),
                 (Estrada (-3),[Carro , Nenhum, Carro , Nenhum, Nenhum, Nenhum, Carro , Nenhum, Nenhum, Nenhum, Carro , Nenhum, Carro ]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore]),
                 (Rio 2       ,[Tronco, Tronco, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Tronco, Nenhum]),
                 (Rio (-3)    ,[Tronco, Nenhum, Tronco, Nenhum, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Tronco, Nenhum, Tronco]),
                 (Rio 1       ,[Tronco, Tronco, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Tronco, Nenhum]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore]),
                 (Estrada (-3),[Carro , Nenhum, Carro , Nenhum, Nenhum, Nenhum, Carro , Nenhum, Nenhum, Nenhum, Carro , Nenhum, Carro ]),
                 (Estrada (-3),[Nenhum, Nenhum, Carro , Nenhum, Nenhum, Carro , Nenhum, Nenhum, Nenhum, Nenhum, Carro , Nenhum, Carro ]),
                 (Rio (-1)    ,[Tronco, Nenhum, Tronco, Nenhum, Nenhum, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Tronco, Nenhum, Tronco]),
                 (Relva       ,[Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore, Arvore, Arvore]),
                 (Relva       ,[Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore, Arvore, Arvore]),
                 (Relva       ,[Arvore, Arvore, Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Arvore, Arvore, Arvore, Arvore, Arvore])
                ]

nivel2 :: Jogo
nivel2 = (Jogo (Jogador (6,15)) mapa2)

mapa2 :: Mapa
mapa2 = Mapa 13 [(Estrada (3) ,[Carro , Nenhum, Carro , Nenhum, Nenhum, Nenhum, Nenhum, Carro , Nenhum, Nenhum, Carro , Nenhum, Carro ]),
                 (Rio (-2)    ,[Tronco, Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Nenhum, Tronco]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore]),
                 (Rio (-2)    ,[Tronco, Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Nenhum, Tronco]),
                 (Estrada (4) ,[Carro , Nenhum, Carro , Nenhum, Nenhum, Nenhum, Carro , Nenhum, Nenhum, Nenhum, Carro , Nenhum, Carro ]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore]),
                 (Rio (-1)    ,[Tronco, Nenhum, Tronco, Nenhum, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Tronco, Nenhum, Tronco]),
                 (Rio 1       ,[Tronco, Tronco, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Tronco, Nenhum]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore]),
                 (Estrada (-3),[Carro , Nenhum, Carro , Nenhum, Nenhum, Nenhum, Carro , Nenhum, Nenhum, Nenhum, Carro , Nenhum, Carro ]),
                 (Rio (-2)    ,[Tronco, Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Nenhum, Tronco]),
                 (Estrada (1) ,[Carro , Nenhum, Carro , Nenhum, Nenhum, Nenhum, Carro , Nenhum, Nenhum, Nenhum, Carro , Nenhum, Carro ]),
                 (Rio (-2)    ,[Tronco, Nenhum, Nenhum, Nenhum, Tronco, Nenhum, Tronco, Nenhum, Tronco, Nenhum, Nenhum, Nenhum, Tronco]),
                 (Relva       ,[Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore, Arvore, Arvore]),
                 (Relva       ,[Arvore, Arvore, Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Arvore, Arvore, Arvore, Arvore, Arvore])
                ]


nivel3 :: Jogo
nivel3 = (Jogo (Jogador (6,15)) mapa3)

mapa3 :: Mapa
mapa3 = Mapa 13 [(Rio 2       ,[Tronco, Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Nenhum, Tronco]),
                 (Estrada 4   ,[Carro , Nenhum, Carro , Nenhum, Nenhum, Nenhum, Nenhum, Carro , Nenhum, Nenhum, Carro , Nenhum, Carro ]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore]),
                 (Rio (-1)    ,[Tronco, Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Nenhum, Tronco]),
                 (Estrada (-3),[Carro , Nenhum, Carro , Nenhum, Nenhum, Nenhum, Carro , Nenhum, Nenhum, Nenhum, Carro , Nenhum, Carro ]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore]),
                 (Rio (-2)    ,[Tronco, Nenhum, Tronco, Nenhum, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Tronco, Nenhum, Tronco]),
                 (Rio 1       ,[Tronco, Tronco, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Tronco, Nenhum]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore]),
                 (Rio 3       ,[Tronco, Tronco, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Tronco, Nenhum]),
                 (Estrada (-4),[Carro , Nenhum, Carro , Nenhum, Nenhum, Nenhum, Carro , Nenhum, Nenhum, Nenhum, Carro , Nenhum, Carro ]),
                 (Estrada (-1),[Nenhum, Nenhum, Carro , Nenhum, Nenhum, Carro , Nenhum, Nenhum, Nenhum, Nenhum, Carro , Nenhum, Carro ]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore]),
                 (Rio (-1)    ,[Tronco, Nenhum, Tronco, Nenhum, Nenhum, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Tronco, Nenhum, Tronco]),
                 (Rio 3       ,[Tronco, Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Nenhum, Tronco]),
                 (Relva       ,[Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore, Arvore, Arvore]),
                 (Relva       ,[Arvore, Arvore, Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Arvore, Arvore, Arvore, Arvore, Arvore])
                ]


nivel4 :: Jogo
nivel4 = (Jogo (Jogador (6,15)) mapa4)

mapa4 :: Mapa
mapa4 = Mapa 13 [(Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore]),
                 (Rio (-1)    ,[Tronco, Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Nenhum, Tronco]),
                 (Estrada 4   ,[Carro , Nenhum, Carro , Nenhum, Nenhum, Nenhum, Nenhum, Carro , Nenhum, Nenhum, Carro , Nenhum, Carro ]),
                 (Rio (-2)    ,[Tronco, Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Nenhum, Tronco]),
                 (Estrada (-1),[Carro , Nenhum, Carro , Nenhum, Nenhum, Nenhum, Carro , Nenhum, Nenhum, Nenhum, Carro , Nenhum, Carro ]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore]),
                 (Rio (3)     ,[Tronco, Tronco, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Tronco, Nenhum]),
                 (Rio (-5)    ,[Tronco, Nenhum, Tronco, Nenhum, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Tronco, Nenhum, Tronco]),
                 (Rio 2       ,[Tronco, Tronco, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Tronco, Nenhum]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore]),
                 (Estrada (-2),[Nenhum, Nenhum, Carro , Nenhum, Nenhum, Carro , Nenhum, Nenhum, Nenhum, Nenhum, Carro , Nenhum, Carro ]),
                 (Rio (3)     ,[Tronco, Nenhum, Tronco, Nenhum, Nenhum, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Tronco, Nenhum, Tronco]),
                 (Estrada (-1),[Carro , Nenhum, Carro , Nenhum, Nenhum, Nenhum, Carro , Nenhum, Nenhum, Nenhum, Carro , Nenhum, Carro ]),
                 (Relva       ,[Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore, Arvore, Arvore]),
                 (Relva       ,[Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore, Arvore, Arvore]),
                 (Relva       ,[Arvore, Arvore, Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Arvore, Arvore, Arvore, Arvore, Arvore])
                ]


nivel5 :: Jogo
nivel5 = (Jogo (Jogador (6,15)) mapa5)

mapa5 :: Mapa
mapa5 = Mapa 13 [(Rio 2       ,[Tronco, Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Nenhum, Tronco]),
                 (Estrada 4   ,[Carro , Nenhum, Carro , Nenhum, Nenhum, Nenhum, Nenhum, Carro , Nenhum, Nenhum, Carro , Nenhum, Carro ]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore]),
                 (Rio (5)     ,[Tronco, Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Nenhum, Tronco]),
                 (Estrada (-2),[Carro , Nenhum, Carro , Nenhum, Nenhum, Nenhum, Carro , Nenhum, Nenhum, Nenhum, Carro , Nenhum, Carro ]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore]),
                 (Rio (-2)    ,[Tronco, Tronco, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Tronco, Nenhum]),
                 (Rio (1)     ,[Tronco, Nenhum, Tronco, Nenhum, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Tronco, Nenhum, Tronco]),
                 (Rio 1       ,[Tronco, Tronco, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Tronco, Tronco, Nenhum, Nenhum, Tronco, Nenhum]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore]),
                 (Estrada (-2),[Nenhum, Nenhum, Carro , Nenhum, Nenhum, Carro , Nenhum, Nenhum, Nenhum, Nenhum, Carro , Nenhum, Carro ]),
                 (Rio (-1)    ,[Tronco, Nenhum, Tronco, Nenhum, Nenhum, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Tronco, Nenhum, Tronco]),
                 (Relva       ,[Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore, Arvore, Arvore]),
                 (Relva       ,[Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore, Arvore, Arvore]),
                 (Relva       ,[Arvore, Arvore, Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Arvore, Arvore, Arvore, Arvore, Arvore])
                ]


nivel6 :: Jogo
nivel6 = (Jogo (Jogador (6,15)) mapa6)


mapa6 :: Mapa -- **Labirinto
mapa6 = Mapa 13 [(Relva       ,[Arvore, Arvore, Arvore, Arvore, Arvore, Arvore, Arvore, Nenhum, Arvore, Arvore, Arvore, Arvore, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Arvore, Arvore, Nenhum, Arvore, Arvore, Arvore]),
                 (Relva       ,[Arvore, Arvore, Arvore, Nenhum, Arvore, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Nenhum, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Arvore, Arvore, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Arvore, Arvore, Arvore, Arvore, Arvore, Nenhum, Arvore, Arvore, Arvore, Arvore, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Nenhum, Arvore, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Arvore, Arvore, Arvore, Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Nenhum, Arvore, Nenhum, Arvore, Nenhum, Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Arvore, Nenhum, Arvore, Nenhum, Arvore, Nenhum, Arvore, Arvore, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Nenhum, Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Arvore, Arvore, Arvore, Arvore, Arvore, Arvore, Arvore, Arvore, Arvore, Arvore, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Nenhum, Nenhum, Arvore, Arvore, Nenhum, Arvore, Arvore, Arvore, Arvore, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Arvore, Arvore, Arvore, Arvore, Arvore, Nenhum, Arvore, Arvore, Arvore, Arvore]),
                 (Relva       ,[Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum])
                ]


nivel7 :: Jogo
nivel7 = (Jogo (Jogador (6,15)) mapa7)

mapa7 :: Mapa -- **Lab2
mapa7 = Mapa 13 [(Relva       ,[Arvore, Arvore, Arvore, Arvore, Arvore, Arvore, Arvore, Nenhum, Arvore, Arvore, Arvore, Arvore, Arvore]),
                 (Relva       ,[Arvore, Arvore, Arvore, Arvore, Arvore, Nenhum, Arvore, Nenhum, Arvore, Nenhum, Arvore, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Nenhum, Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Arvore, Nenhum, Arvore, Arvore, Arvore, Arvore, Arvore, Arvore, Arvore, Arvore, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Nenhum, Nenhum, Arvore, Arvore, Arvore, Arvore, Arvore, Arvore, Nenhum, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Arvore, Arvore, Nenhum, Arvore, Nenhum, Nenhum, Arvore, Arvore, Nenhum, Nenhum, Arvore, Arvore]),
                 (Relva       ,[Arvore, Arvore, Arvore, Nenhum, Arvore, Nenhum, Arvore, Arvore, Arvore, Nenhum, Arvore, Arvore, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Arvore, Arvore, Arvore, Nenhum, Arvore, Arvore, Arvore, Arvore, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Arvore, Nenhum, Arvore, Nenhum, Nenhum, Nenhum, Arvore, Nenhum, Arvore, Nenhum, Arvore, Arvore]),
                 (Relva       ,[Arvore, Arvore, Nenhum, Arvore, Arvore, Arvore, Arvore, Arvore, Nenhum, Arvore, Nenhum, Arvore, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Arvore, Arvore, Arvore, Arvore, Nenhum, Arvore, Arvore, Arvore, Arvore, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore, Arvore, Arvore, Arvore]),
                 (Relva       ,[Arvore, Arvore, Arvore, Arvore, Arvore, Arvore, Nenhum, Arvore, Arvore, Arvore, Arvore, Arvore, Arvore])
                ]


nivel8 :: Jogo
nivel8 = (Jogo (Jogador (6,15)) mapa8)

mapa8 :: Mapa -- ** MarioCar
mapa8 = Mapa 13 [(Relva       ,[Arvore, Arvore, Arvore, Arvore, Arvore, Arvore, Nenhum, Arvore, Arvore, Arvore, Arvore, Arvore, Arvore]),
                 (Estrada (2) ,[Carro , Nenhum, Carro , Carro , Nenhum, Carro , Carro , Nenhum, Nenhum, Nenhum, Carro , Nenhum, Carro ]),
                 (Estrada (-3),[Nenhum, Nenhum, Carro , Nenhum, Nenhum, Carro , Nenhum, Nenhum, Carro , Nenhum, Carro , Nenhum, Carro ]),
                 (Estrada (-3),[Nenhum, Carro , Carro , Nenhum, Carro , Carro , Nenhum, Carro , Nenhum, Nenhum, Nenhum, Nenhum, Carro ]),
                 (Estrada (4) ,[Carro , Nenhum, Carro , Nenhum, Carro , Nenhum, Carro , Carro , Nenhum, Nenhum, Nenhum, Carro , Carro ]),
                 (Estrada (3) ,[Nenhum, Carro , Carro , Carro , Nenhum, Carro , Nenhum, Carro , Nenhum, Nenhum, Carro , Nenhum, Carro ]),
                 (Estrada (-4),[Carro , Nenhum, Carro , Nenhum, Nenhum, Carro , Nenhum, Nenhum, Carro , Carro , Nenhum, Nenhum, Carro ]),
                 (Relva       ,[Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore]),
                 (Estrada (3) ,[Carro , Nenhum, Carro , Nenhum, Nenhum, Carro , Nenhum, Nenhum, Nenhum, Nenhum, Carro , Nenhum, Carro ]),
                 (Estrada (-4),[Nenhum, Nenhum, Carro , Nenhum, Nenhum, Carro , Nenhum, Nenhum, Nenhum, Nenhum, Carro , Nenhum, Carro ]),
                 (Estrada (2) ,[Nenhum, Carro , Carro , Nenhum, Nenhum, Carro , Nenhum, Carro , Nenhum, Nenhum, Carro , Nenhum, Carro ]),
                 (Estrada (5) ,[Carro , Nenhum, Nenhum, Nenhum, Nenhum, Carro , Carro , Nenhum, Nenhum, Carro , Carro , Nenhum, Carro ]),
                 (Estrada (3) ,[Nenhum, Nenhum, Carro , Carro , Nenhum, Carro , Nenhum, Carro , Nenhum, Nenhum, Carro , Nenhum, Carro ]),
                 (Estrada (-3),[Nenhum, Carro , Carro , Nenhum, Nenhum, Carro , Nenhum, Carro , Nenhum, Carro , Carro , Nenhum, Carro ]),
                 (Relva       ,[Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum])
                ]


nivel9 :: Jogo
nivel9 = (Jogo (Jogador (6,15)) mapa9)

mapa9 :: Mapa -- ** guaPark
mapa9 = Mapa 13 [(Relva       ,[Arvore, Arvore, Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore, Arvore, Arvore]),
                 (Rio (-2)    ,[Tronco, Nenhum, Nenhum, Nenhum, Tronco, Nenhum, Tronco, Nenhum, Tronco, Nenhum, Nenhum, Nenhum, Tronco]),
                 (Rio (3)     ,[Nenhum, Nenhum, Tronco, Nenhum, Nenhum, Tronco, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Tronco]),
                 (Rio (5)     ,[Tronco, Tronco, Nenhum, Nenhum, Tronco, Tronco, Nenhum, Tronco, Tronco, Nenhum, Nenhum, Nenhum, Nenhum]),
                 (Rio (-1)    ,[Nenhum, Tronco, Tronco, Nenhum, Tronco, Nenhum, Tronco, Nenhum, Nenhum, Tronco, Tronco, Nenhum, Nenhum]),
                 (Rio (2)     ,[Tronco, Nenhum, Nenhum, Tronco, Nenhum, Nenhum, Tronco, Nenhum, Nenhum, Nenhum, Tronco, Tronco, Tronco]),
                 (Rio (-2)    ,[Tronco, Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Tronco, Nenhum, Tronco, Nenhum, Tronco]),
                 (Relva       ,[Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore]),
                 (Relva       ,[Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore]),
                 (Rio (-1)    ,[Nenhum, Tronco, Nenhum, Tronco, Tronco, Nenhum, Tronco, Nenhum, Tronco, Nenhum, Tronco, Nenhum, Nenhum]),
                 (Rio (-3)    ,[Tronco, Nenhum, Tronco, Nenhum, Nenhum, Tronco, Tronco, Nenhum, Nenhum, Tronco, Nenhum, Tronco, Nenhum]),
                 (Rio (4)     ,[Nenhum, Nenhum, Tronco, Nenhum, Tronco, Tronco, Nenhum, Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco]),
                 (Rio (-5)    ,[Nenhum, Tronco, Nenhum, Tronco, Tronco, Nenhum, Tronco, Nenhum, Nenhum, Tronco, Tronco, Nenhum, Tronco]),
                 (Rio (-2)    ,[Tronco, Nenhum, Tronco, Nenhum, Tronco, Nenhum, Nenhum, Tronco, Tronco, Nenhum, Nenhum, Nenhum, Tronco]),
                 (Rio (-1)    ,[Tronco, Tronco, Tronco, Nenhum, Nenhum, Tronco, Tronco, Nenhum, Tronco, Nenhum, Tronco, Tronco, Nenhum]),
                 (Relva       ,[Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum])
                ]


nivel10 :: Jogo
nivel10 = (Jogo (Jogador (6,15)) mapa10)

mapa10 :: Mapa -- ** Paradise
mapa10 = Mapa 13 [(Relva       ,[Arvore, Arvore, Arvore, Arvore, Arvore, Arvore, Nenhum, Arvore, Arvore, Arvore, Arvore, Arvore, Arvore]),
                  (Relva       ,[Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore]),
                  (Relva       ,[Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore]),
                  (Relva       ,[Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore]),
                  (Relva       ,[Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore]),
                  (Relva       ,[Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore]),
                  (Relva       ,[Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore]),
                  (Rio (-6)    ,[Tronco, Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco, Nenhum, Tronco, Nenhum, Tronco, Nenhum, Tronco]),
                  (Rio (5)     ,[Tronco, Tronco, Nenhum, Nenhum, Tronco, Nenhum, Tronco, Nenhum, Tronco, Nenhum, Tronco, Tronco, Tronco]),
                  (Relva       ,[Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore]),
                  (Relva       ,[Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore]),
                  (Relva       ,[Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore]),
                  (Relva       ,[Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore]),
                  (Relva       ,[Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore]),
                  (Relva       ,[Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore]),
                  (Relva       ,[Arvore, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Nenhum, Arvore]),
                  (Relva       ,[Arvore, Arvore, Arvore, Arvore, Arvore, Arvore, Nenhum, Arvore, Arvore, Arvore, Arvore, Arvore, Arvore])
                 ]
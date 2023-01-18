{- |
Module      : ExtraDataConstructores
Description : Data constructores adicionais ao programa.
Copyright   : Pedro Figueiredo Pereira <a104082@alunos.uminho.pt>
              Jorge Ubaldo Rodrigues Ferreira <a104096@alunos.uminho.pt>

Este módulo contem construtores de apoio ao programa.  
-}
module ExtraDataConstructores where

import LI12223
import Graphics.Gloss

data Roupas = Personagem deriving (Show, Read, Eq)

type TopScore = Int

type StringExtras = String

type ModeloMapa = String

type Modelopersonagem = String

type StringTerreno = String

type StringRoupas = String

type StringObstaculo = String

type StringMenu = String

type TempoDecorrido = Float

type ControladorSingle = Bool

type ControladorMulti = Bool

type ControladorBot = Bool

type Score = Int

type TexturasMenu = [(StringMenu, (Picture, (Float, Float)))]

type TexturasObstaculos = [(StringObstaculo, (Picture, (Float, Float)))]

type TexturasTerrenos = [(StringTerreno, (Picture, (Float, Float)))]

type Skins = [(StringRoupas, Picture)]

type Extras = [(StringExtras, Picture)]
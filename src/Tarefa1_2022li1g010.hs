{- |
Module      : Tarefa1_2022li1g010
Description : Validação de um mapa
Copyright   : Pedro Figueiredo Pereira <a104082@alunos.uminho.pt>
              Jorge Ubaldo Rodrigues Ferreira <a104096@alunos.uminho.pt>

Módulo para a realização da Tarefa 1 do projeto de LI1 em 2022/23.
-}

module Tarefa1_2022li1g010 where

import LI12223
import Data.List

-- *Função main
{- | A função 'mapaValido' recebe um __Mapa__ e determina se este é válido ou inválido.
Esta recorre às funções auxiliares 'verificaLargura', 'mapaValidoAux' e 'verificaNenhum', para desta forma determinar o valor logico desta função. 

@
mapaValido :: Mapa -> Bool
mapaValido (Mapa _ []) = False
mapaValido m@(Mapa largura linhas) = (verificaLargura m && mapaValidoAux m && verificaNenhum m)
@

== Exemplo de utilização:
>>> mapaValido (Mapa 2 [(Rio 2, [Nenhum, Tronco]), (Estrada (-1), [Nenhum, Carro]), (Estrada 2, [Nenhum, Carro]), (Relva, [Nenhum, Arvore])]) = True
>>> mapaValido (Mapa 2 [(Rio 2, [Nenhum, Tronco]), (Rio (-1), [Nenhum, Tronco]), (Rio 2, [Nenhum, Tronco]), (Rio (-1), [Nenhum, Arvore])]) = False

== Propriedades:
prop> Se mapaValido = True, o Mapa é válido. 
prop> Se mapaValido = False, o Mapa é inválido.
prop> Basta que uma das funções auxiliares verificarem o valor __False__ para a verificar que o Mapa é inválido. 
-}

mapaValido :: Mapa -> Bool
mapaValido (Mapa _ []) = False
mapaValido m@(Mapa largura linhas) = (verificaLargura m && mapaValidoAux m && verificaNenhum m)

-- *Funções auxiliares

-- ** Função 'mapaValidoAux'
{- | A função 'mapaValidoAux' recebe um __Mapa__ e dá como resultado um __boolean__.
Esta função servirá para determinar o valor lógico de um determinado __Mapa__ com base na análise de cada linha:

 - __Relvas__ --> 'verificaLinhaRelva' e 'verificaRelvasConsecutivas' 

 - __Rios__ -->  'verificaLinhaValido', 'verificaRiosConsecutivos', 'verificaTroncosConsecutivos' e 'verificaOrientacaoRios'

 - __Estradas__ --> 'verificaLinhaValido', 'verificaEstradasConsecutivas' e 'verificaCarrosConsecutivos'

@
mapaValidoAux :: Mapa -> Bool
mapaValidoAux (Mapa largura []) = True
mapaValidoAux m@(Mapa largura l@((Relva, obs):t)) = (verificaLinhaRelva m) && (verificaRelvasConsecutivas l 0) && mapaValidoAux (Mapa largura t) 
mapaValidoAux m@(Mapa largura l@((Rio a, obs):t)) = (verificaLinhaValido m) && (verificaRiosConsecutivos l 0) && (verificaTroncosConsecutivos m) && (verificaOrientacaoRios m) && mapaValidoAux (Mapa largura t) 
mapaValidoAux m@(Mapa largura l@((Estrada a, obs):t)) = (verificaLinhaValido m) && (verificaEstradasConsecutivas l 0) && (verificaCarrosConsecutivos m) && mapaValidoAux (Mapa largura t) 
@

== Exemplo de utilização:
>>> mapaValido (Mapa 2 [(Estrada 2, [Nenhum, Carro]), (Rio (-1), [Nenhum, Tronco]), (Rio 2, [Nenhum, Tronco]), (Rio (-1), [Nenhum, Tronco])]) = True
>>> mapaValido (Mapa 2 [(Estrada 2, [Nenhum, Carro]), (Rio 2, [Nenhum, Tronco]), (Rio 2, [Nenhum, Tronco]), (Rio (-1), [Nenhum, Tronco])]) = False 
-}

mapaValidoAux :: Mapa -> Bool
mapaValidoAux (Mapa largura []) = True
mapaValidoAux m@(Mapa largura l@((Relva, obs):t)) = (verificaLinhaRelva m) && (verificaRelvasConsecutivas l 0) && mapaValidoAux (Mapa largura t) 
mapaValidoAux m@(Mapa largura l@((Rio a, obs):t)) = (verificaLinhaValido m) && (verificaRiosConsecutivos l 0) && (verificaTroncosConsecutivos m) && (verificaOrientacaoRios m) && mapaValidoAux (Mapa largura t) 
mapaValidoAux m@(Mapa largura l@((Estrada a, obs):t)) = (verificaLinhaValido m) && (verificaEstradasConsecutivas l 0) && (verificaCarrosConsecutivos m) && mapaValidoAux (Mapa largura t) 

-- ** Função 'verificaLargura'
{- | A função 'verificaLargura' recebe um __Mapa__ e dá como resultado um __boolean__.
Esta função servirá para determinar o valor lógico da comparação da largura do mapa com o tamanho da lista de obstáculos das diferentes linhas.

@
verificaLargura :: Mapa -> Bool
verificaLargura (Mapa largura []) = True 
verificaLargura (Mapa largura ((terreno, obs):t)) = if (length obs == largura) 
                                                    then verificaLargura (Mapa largura t)
                                                    else False
@

== Propriedades
prop> verificaLargura (Mapa largura linhas) = True    Isto significa que a largura é igual ao tamanho da lista de obstáculos. 
prop> verificaLargura (Mapa largura linhas) = False   Isto significa que a largura não é igual ao tamanho da lista de obstáculos.
-}

verificaLargura :: Mapa -> Bool
verificaLargura (Mapa largura []) = True 
verificaLargura (Mapa largura ((terreno, obs):t)) = if (length obs == largura) 
                                                    then verificaLargura (Mapa largura t)
                                                    else False

-- ** Funções 'verificaLinhaValido' e 'verificaLinhaRelva'
{- | As funções 'verificaLinhaValido' e 'verificaLinhaRelva' recebem um __Mapa__ e dão como resultado um __boolean__.
Estas funções servirão para determinar se não existem obstáculos inválidos nas diferentes linhas.

@
verificaLinhaValido :: Mapa -> Bool
verificaLinhaValido (Mapa largura ((Rio a, obs):t)) = not (elem Carro obs || elem Arvore obs) 
verificaLinhaValido (Mapa largura ((Estrada a, obs):t)) = not (elem Tronco obs || elem Arvore obs) 

verificaLinhaRelva :: Mapa -> Bool
verificaLinhaRelva (Mapa largura ((Relva, obs):t)) = not (elem Carro obs || elem Tronco obs) 
@

== Propriedades
prop> verificaLinhaValido (Mapa largura linhas) = True    Isto significa que só há obstáculos válidos na lista de obstáculos. 
prop> verificaLinhaRelva  (Mapa largura linhas) = False   Isto significa que há obstáculos inválidos na lista de obstáculos.
-}

verificaLinhaValido :: Mapa -> Bool
verificaLinhaValido (Mapa largura ((Rio a, obs):t)) = not (elem Carro obs || elem Arvore obs) 
verificaLinhaValido (Mapa largura ((Estrada a, obs):t)) = not (elem Tronco obs || elem Arvore obs) 
--
verificaLinhaRelva :: Mapa -> Bool
verificaLinhaRelva (Mapa largura ((Relva, obs):t)) = not (elem Carro obs || elem Tronco obs) 

-- ** Funções 'verificaRiosConsecutivos', 'verificaRelvasConsecutivas' e 'verificaEstradasConsecutivas'
{- | As funções 'verificaRiosConsecutivos', 'verificaRelvasConsecutivas' e 'verificaEstradasConsecutivas' recebem uma __[(Terreno, [Obstaculo])]__, __Inteiro__ (acumulador) e dão como resultado um __boolean__.
Estas funções servirão para determinar se o são cumpridas as regras do jogo relativamente ao número de linhas consecutivas dos diferentes tipos de Terreno.

@
verificaRiosConsecutivos :: [(Terreno, [Obstaculo])] -> Int -> Bool
verificaRiosConsecutivos [] _ = True
verificaRiosConsecutivos ((Rio _, _):t) n | n >= 4 = False
                                          | otherwise = verificaRiosConsecutivos t (n + 1)
verificaRiosConsecutivos (_:t) n = verificaRiosConsecutivos t 0

verificaRelvasConsecutivas :: [(Terreno, [Obstaculo])] -> Int -> Bool
verificaRelvasConsecutivas [] _ = True
verificaRelvasConsecutivas ((Relva, _):t) n | n >= 5 = False
                                            | otherwise = verificaRelvasConsecutivas t (n + 1)
verificaRelvasConsecutivas (_:t) n = verificaRelvasConsecutivas t 0

verificaEstradasConsecutivas :: [(Terreno, [Obstaculo])] -> Int -> Bool
verificaEstradasConsecutivas [] _ = True
verificaEstradasConsecutivas ((Estrada _, _):t) n | n >= 5 = False
                                              | otherwise = verificaEstradasConsecutivas t (n + 1)
verificaEstradasConsecutivas (_:t) n = verificaEstradasConsecutivas t 0 
@

== Propriedades
prop> verificaRiosConsecutivos     [(Terreno, [Obstaculo])] n = True    Isto significa que não há mais do que 4 Rios seguidos. 
prop> verificaRelvasConsecutivas   [(Terreno, [Obstaculo])] n = False   Isto significa que há mais do que 5 Relvas seguidos.
prop> verificaEstradasConsecutivas [(Terreno, [Obstaculo])] n = True    Isto significa que não há mais do que 5 Estradas seguidas. 

-}

verificaRiosConsecutivos :: [(Terreno, [Obstaculo])] -> Int -> Bool
verificaRiosConsecutivos [] _ = True
verificaRiosConsecutivos ((Rio _, _):t) n | n >= 4 = False
                                          | otherwise = verificaRiosConsecutivos t (n + 1)
verificaRiosConsecutivos (_:t) n = verificaRiosConsecutivos t 0
--
verificaRelvasConsecutivas :: [(Terreno, [Obstaculo])] -> Int -> Bool
verificaRelvasConsecutivas [] _ = True
verificaRelvasConsecutivas ((Relva, _):t) n | n >= 5 = False
                                            | otherwise = verificaRelvasConsecutivas t (n + 1)
verificaRelvasConsecutivas (_:t) n = verificaRelvasConsecutivas t 0
--
verificaEstradasConsecutivas :: [(Terreno, [Obstaculo])] -> Int -> Bool
verificaEstradasConsecutivas [] _ = True
verificaEstradasConsecutivas ((Estrada _, _):t) n | n >= 5 = False
                                              | otherwise = verificaEstradasConsecutivas t (n + 1)
verificaEstradasConsecutivas (_:t) n = verificaEstradasConsecutivas t 0

-- ** Função 'verificaOrientacaoRios'
{- | A função 'verificaOrientacaoRios' recebe um __Mapa__ e dá como resultado um __boolean__.
Esta função servirá para determinar o valor lógico da comparação das diversas velocidades entre Rios consecutivos das diferentes linhas, através da utilização da função auxiliar 'verificaOrientacaoRiosAux' que compara as velocidades.

@
verificaOrientacaoRios :: Mapa -> Bool
verificaOrientacaoRios (Mapa largura ((Rio 0, _):_)) = False 
verificaOrientacaoRios (Mapa largura ((Rio a, obs):t)) = verificaOrientacaoRiosAux (Mapa largura ((Rio a, obs):t)) 0

verificaOrientacaoRiosAux :: Mapa -> Int -> Bool
verificaOrientacaoRiosAux (Mapa largura []) _ = True
verificaOrientacaoRiosAux (Mapa largura ((Rio a, obs):t)) n | n == 0 = verificaOrientacaoRiosAux (Mapa largura t) a
                                                            | n > 0 && a < 0 = verificaOrientacaoRiosAux (Mapa largura t) a
                                                            | n < 0 && a > 0 = verificaOrientacaoRiosAux (Mapa largura t) a
                                                            | otherwise = False
verificaOrientacaoRiosAux (Mapa largura ((_, obs):t)) _ = verificaOrientacaoRiosAux (Mapa largura t) 0
@

== Propriedades
prop> verificaOrientacaoRios (Mapa largura linhas) = True    Isto significa que as velocidades dos Rios consecutivos têm sentido oposto. 
prop> verificaOrientacaoRios (Mapa largura linhas) = False   Isto significa que as velocidades dos Rios consecutivos não têm sentido oposto.
-}
 
verificaOrientacaoRios :: Mapa -> Bool
verificaOrientacaoRios (Mapa largura ((Rio 0, _):_)) = False 
verificaOrientacaoRios (Mapa largura ((Rio a, obs):t)) = verificaOrientacaoRiosAux (Mapa largura ((Rio a, obs):t)) 0
--
verificaOrientacaoRiosAux :: Mapa -> Int -> Bool
verificaOrientacaoRiosAux (Mapa largura []) _ = True
verificaOrientacaoRiosAux (Mapa largura ((Rio a, obs):t)) n | n == 0 = verificaOrientacaoRiosAux (Mapa largura t) a
                                                            | n > 0 && a < 0 = verificaOrientacaoRiosAux (Mapa largura t) a
                                                            | n < 0 && a > 0 = verificaOrientacaoRiosAux (Mapa largura t) a
                                                            | otherwise = False
verificaOrientacaoRiosAux (Mapa largura ((_, obs):t)) _ = verificaOrientacaoRiosAux (Mapa largura t) 0

-- ** Funções 'verificaTroncosConsecutivos' e 'verificaCarrosConsecutivos'
{- | As funções 'verificaTroncosConsecutivos' e 'verificaCarrosConsecutivos' recebem um __Mapa__ e dão como resultado um __boolean__.
Estas funções servirão para determinar se o são cumpridas as regras do jogo relativamente ao número de troncos/carros consecutivos em que:
 
 - 'verificaTroncosConsecutivos' e 'verificaCarrosConsecutivos' --> Recebem o __Mapa__ e chamam as funções 'verificaTroncosConsecutivosAux' e 'verificaCarrosConsecutivosAux', respetivamente com os obstáculos agrupados.
 
 - 'verificaTroncosConsecutivosAux' e 'verificaCarrosConsecutivosAux' --> Recebem os obstáculos agrupados e comparam o primeiro elemento e último de forma a combater a exeção da linha rodar: 
 
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀- Se forem iguais chamam as funções 'verificaTroncosConsecutivosAux2' e 'verificaCarrosConsecutivosAux2', respetivamente, que analisam se o número de obstáculos do mesmo tipo é válido.
 
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀- Se não forem iguais chamam as funções 'verificaTroncosConsecutivosAux3' e 'verificaCarrosConsecutivosAux3', respetivamente, que analisam se o número de obstáculos do mesmo tipo é válido.

@
verificaTroncosConsecutivos :: Mapa -> Bool
verificaTroncosConsecutivos (Mapa _ ((Rio a, obs):t)) = verificaTroncosConsecutivosAux (group obs)  

verificaTroncosConsecutivosAux :: [[Obstaculo]] -> Bool
verificaTroncosConsecutivosAux [] = True
verificaTroncosConsecutivosAux l@(h:t) = if (elem Tronco h) && (elem Tronco (last l)) 
                                       then verificaTroncosConsecutivosAux2 (h ++ (last l)) t
                                       else verificaTroncosConsecutivosAux3 (h:t)

verificaTroncosConsecutivosAux2 :: [Obstaculo] -> [[Obstaculo]] -> Bool
verificaTroncosConsecutivosAux2 l t = if length l < 5 then verificaTroncosConsecutivosAux3 t else False

verificaTroncosConsecutivosAux3 :: [[Obstaculo]] -> Bool
verificaTroncosConsecutivosAux3 [] = True
verificaTroncosConsecutivosAux3 (h:t) = if (elem Tronco h) 
                                        then (length h) < 6 && (verificaTroncosConsecutivosAux t) 
                                        else verificaTroncosConsecutivosAux t                                    

verificaCarrosConsecutivos :: Mapa -> Bool
verificaCarrosConsecutivos (Mapa _ ((Estrada a, obs):t)) = verificaCarrosConsecutivosAux (group obs)  

verificaCarrosConsecutivosAux :: [[Obstaculo]] -> Bool
verificaCarrosConsecutivosAux [] = True
verificaCarrosConsecutivosAux l@(h:t) = if (elem Carro h) && (elem Carro (last l)) 
                                       then verificaCarrosConsecutivosAux2 (h ++ (last l)) t
                                       else verificaCarrosConsecutivosAux3 (h:t)

verificaCarrosConsecutivosAux2 :: [Obstaculo] -> [[Obstaculo]] -> Bool
verificaCarrosConsecutivosAux2 l t = if length l < 3 then verificaCarrosConsecutivosAux3 t else False

verificaCarrosConsecutivosAux3 :: [[Obstaculo]] -> Bool
verificaCarrosConsecutivosAux3 [] = True
verificaCarrosConsecutivosAux3 (h:t) = if (elem Carro h) 
                                        then (length h) < 4 && (verificaCarrosConsecutivosAux t) 
                                        else verificaCarrosConsecutivosAux t 
@

== Propriedades
prop> verificaTroncosConsecutivos (Mapa largura linhas) = True    Isto significa que não há mais do que 5 troncos seguidos.
prop> verificaTroncosConsecutivos (Mapa largura linhas) = False   Isto significa que há mais do que 5 troncos seguidos. 
prop> verificaCarrosConsecutivos  (Mapa largura linhas) = True    Isto significa que não há mais do que 3 carros seguidos.
prop> verificaCarrosConsecutivos  (Mapa largura linhas) = False   Isto significa que há mais do que 3 carros seguidos.
-}
  
verificaTroncosConsecutivos :: Mapa -> Bool
verificaTroncosConsecutivos (Mapa _ ((Rio a, obs):t)) = verificaTroncosConsecutivosAux (group obs)  
--
verificaTroncosConsecutivosAux :: [[Obstaculo]] -> Bool
verificaTroncosConsecutivosAux [] = True
verificaTroncosConsecutivosAux l@(h:t) = if (elem Tronco h) && (elem Tronco (last l)) 
                                       then verificaTroncosConsecutivosAux2 (h ++ (last l)) t
                                       else verificaTroncosConsecutivosAux3 (h:t)
--
verificaTroncosConsecutivosAux2 :: [Obstaculo] -> [[Obstaculo]] -> Bool
verificaTroncosConsecutivosAux2 l t = if length l < 5 then verificaTroncosConsecutivosAux3 t else False
--
verificaTroncosConsecutivosAux3 :: [[Obstaculo]] -> Bool
verificaTroncosConsecutivosAux3 [] = True
verificaTroncosConsecutivosAux3 (h:t) = if (elem Tronco h) 
                                        then (length h) < 6 && (verificaTroncosConsecutivosAux t) 
                                        else verificaTroncosConsecutivosAux t                                    
--
verificaCarrosConsecutivos :: Mapa -> Bool
verificaCarrosConsecutivos (Mapa _ ((Estrada a, obs):t)) = verificaCarrosConsecutivosAux (group obs)  
--
verificaCarrosConsecutivosAux :: [[Obstaculo]] -> Bool
verificaCarrosConsecutivosAux [] = True
verificaCarrosConsecutivosAux l@(h:t) = if (elem Carro h) && (elem Carro (last l)) 
                                       then verificaCarrosConsecutivosAux2 (h ++ (last l)) t
                                       else verificaCarrosConsecutivosAux3 (h:t)
--
verificaCarrosConsecutivosAux2 :: [Obstaculo] -> [[Obstaculo]] -> Bool
verificaCarrosConsecutivosAux2 l t = if length l < 3 then verificaCarrosConsecutivosAux3 t else False

verificaCarrosConsecutivosAux3 :: [[Obstaculo]] -> Bool
verificaCarrosConsecutivosAux3 [] = True
verificaCarrosConsecutivosAux3 (h:t) = if (elem Carro h) 
                                        then (length h) < 4 && (verificaCarrosConsecutivosAux t) 
                                        else verificaCarrosConsecutivosAux t 

-- ** Função 'verificaNenhum'
{- | A função 'verificaNenhum' recebe um __Mapa__ e dá como resultado um __boolean__.
Esta função servirá para determinar o valor lógico da obrigatoriedade de existir pelo menos um obstáculo nenhum nas diferentes listas de obstáculos.

@
verificaNenhum :: Mapa -> Bool
verificaNenhum (Mapa largura []) = True
verificaNenhum (Mapa largura ((terreno, obs):t)) = if (elem Nenhum obs)
                                                   then verificaNenhum (Mapa largura t)
                                                   else False
@

== Propriedades
prop> verificaNenhum (Mapa largura linhas) = True    Isto significa que existe pelo menos um obstáculo Nenhum. 
prop> verificaNenhum (Mapa largura linhas) = False   Isto significa que não existe o obstáculo Nenhum.
-}

verificaNenhum :: Mapa -> Bool
verificaNenhum (Mapa largura []) = True
verificaNenhum (Mapa largura ((terreno, obs):t)) = if (elem Nenhum obs)
                                                   then verificaNenhum (Mapa largura t)
                                                   else False
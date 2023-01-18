# Laboratórios de Informática I

## Repositório

Se tiver chave SSH configurada no GitLab pode fazer clone com o seguinte link:

```bash
$ git clone git@gitlab.com:uminho-di/li1/2223/2022li1g010.git
$ cd 2022li1g010
```

Alternativamente, pode fazer clone por https com o seguinte link:

```bash
$ git clone https://gitlab.com/uminho-di/li1/2223/projetos/2022li1g010.git
$ cd 2022li1g010
```

## Interpretador

Pode abrir o interpretador do Haskell (GHCi) utilizando o cabal ou diretamente.

1. Usando o cabal

```bash
$ cabal repl
```

2. Usando o GHCi

```bash
$ ghci -i="src" -i="tests" src/Main.hs
```

## Testes

O projecto utiliza a biblioteca [HUnit](https://hackage.haskell.org/package/HUnit) para fazer testes unitários.

Pode correr os testes utilizando uma das seguintes alternativas:

1. Usando o `cabal`

```bash
$ cabal test
```

2. Usando o GHCi

```bash
$ ghci -i="src" -i="tests" tests/Spec.hs
>>> runTestsT1 -- Correr os testes tarefa 1
>>> runTestsT2 -- Correr os testes tarefa 2
>>> runTestsT3 -- Correr os testes tarefa 3
>>> runTestsT4 -- Correr os testes tarefa 4
>>> main -- Correr todos os testes
```

3. Usando o wrapper `runhaskell`

```bash
$ runhaskell -i="src" -i="tests" tests/Spec.hs
```

## Documentação

Pode gerar a documentação com o [Haddock](https://haskell-haddock.readthedocs.io/).

1. Usando o `cabal`

```bash
$ cabal haddock --haddock-all
```

2. Usando diretamente o `haddock`

```bash
$ haddock -h -o doc/html src/*.hs
```

## Grupo 10

- **A104082** Pedro Figueiredo Pereira;
- **A104096** Jorge Ubaldo Rodrigues Ferreira;

# Block Knight

## Software Labs I | Laboratórios de Informática I
## Grade: 18/20 :star:

This game was developed during the first semester of the Software Engineering degree @ University of Minho. The full process of development was evaluated and established the final grade for the "Laboratórios de Informática I" subject.

The project consisted of recreating the old game BlockDude, with the freedom to add features and completely change the graphical appearance, which was, in this case, heavily inspired by Hollow Knight.

It was fully developed in Haskell and consisted of 6 tasks:

1. Verify if a given map is valid;

2. Construct and destruct maps (from type "[(Peca, Coordenadas)]" to type "Mapa" and vice-versa);

3. Instantiate Show in order to display an output of the type "Jogo" as a String;

4. Update the current game state according to the player movements;

5. Create and implement game graphics, using Gloss.

6. Create a game bot to solve, in the minimum necessary player movements, a map.

## Game gallery

<img align = "center" width = 900px src = "https://github.com/RuiL1904/Block-Knight/blob/main/assets/mpJogar.jpg"/>
<img align = "center" width = 900px src = "https://github.com/RuiL1904/Block-Knight/blob/main/assets/eBackground1.jpg"/>
<img align = "center" width = 900px src = "https://github.com/RuiL1904/Block-Knight/blob/main/assets/mjMapa1.jpg"/>
<img align = "center" width = 900px src = "https://github.com/RuiL1904/Block-Knight/blob/main/assets/playingMap.png"/>

## Installing and running the game

Firstly, install Haskell Platform (GHC and Cabal).
To do so, follow the instructions for your specific system at: [haskell.org/downloads](https://www.haskell.org/downloads/)

Finally, since the graphical interface of the game was developed using the [Gloss](https://hackage.haskell.org/package/gloss) library, you'll need to install it:

```bash
$ cabal update
$ cabal install --lib gloss
```

#### Cloning the repository

```bash
$ git clone https://github.com/RuiL1904/Block-Knight.git
```

#### Compiling

```bash
$ cd Block-Knight/src
$ ghc Tarefa5_2021li1g033.hs
```

#### Running

```bash
$ cd ..
$ ./src/Tarefa5_2021li1g033
```
## Arch-based distros
Since arch is not that good working with cabal, I recommend you to use stack (you can install it with pacman).
Finally, since the graphical interface of the game was developed using the Gloss library, you'll need to install it:

```bash
$ stack upgrade
$ stack install gloss
$ stack install gloss-juicy
```

#### Cloning the repository

```bash
$ git clone https://github.com/pedrofp4444/Crossy-Road-Plus
```
#### Compiling

```bash
$ cd Block-Knight/src
$ stack ghc --package gloss Main.hs
```

#### Running

```bash
$ cd ..
$ ./src/Tarefa5_2021li1g033
```

## Possible problems

In case you get a mpv error, you'll need to install it (since It was used to play audio inside the game).
Follow the instructions here: [mpv.io/installation](https://mpv.io/installation/)

## Grupo 10

- **A104082** Pedro Figueiredo Pereira;
- **A104096** Jorge Ubaldo Rodrigues Ferreira;

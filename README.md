# Crossy Road +

## Software Labs I | Laboratórios de Informática I
## Grade: --/20 :star:

This game was developed during the first semester of the Software Engineering degree @ University of Minho. The full process of development was evaluated and established the final grade for the "Laboratórios de Informática I" subject.

The project consisted of recreating the game Crossy Road, with the freedom to add features and completely change the graphical appearance, which was, in this case, fully design by us.

It was fully developed in Haskell and consisted of 6 tasks:

1. Verify if a given map is valid;

2. Generate a random map;

3. Move the player on the map;

4. Determines when the game ends;

5. Make the game slide;

6. Build all the graphical part of the game.

## Game gallery

<img align = "center" width = 900px src = "https://github.com/pedrofp4444/Crossy-Road-Plus/blob/main/assets/img/front-page.png"/>
<img align = "center" width = 900px src = "https://github.com/pedrofp4444/Crossy-Road-Plus/blob/main/assets/img/loja-skins.png"/>
<img align = "center" width = 900px src = "https://github.com/pedrofp4444/Crossy-Road-Plus/blob/main/assets/img/loja-mapas.png"/>
<img align = "center" width = 900px src = "https://github.com/pedrofp4444/Crossy-Road-Plus/blob/main/assets/img/single.png"/>
<img align = "center" width = 900px src = "https://github.com/pedrofp4444/Crossy-Road-Plus/blob/main/assets/img/multi.png"/>
<img align = "center" width = 900px src = "https://github.com/pedrofp4444/Crossy-Road-Plus/blob/main/assets/img/niveis.png"/>
<img align = "center" width = 900px src = "https://github.com/pedrofp4444/Crossy-Road-Plus/blob/main/assets/img/ajuda.png"/>

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
## Interpreter

You can open the interpreter Haskell (GHCi) using the cabal or directly.

1. Using `cabal`

```bash
$ cabal repl
```

2. UUsing `GHCi`

```bash
$ ghci -i="src" -i="tests" src/Main.hs
```

## Documentation

You can generate documentation with the [Haddock](https://haskell-haddock.readthedocs.io/).

1. Using `cabal`

```bash
$ cabal haddock --haddock-all
```

2. Using directly `haddock`

```bash
$ haddock -h -o doc/html src/*.hs
```

## Possible problems

In case you get a mpv error, you'll need to install it (since It was used to play audio inside the game).
Follow the instructions here: [mpv.io/installation](https://mpv.io/installation/)

## Grupo 10

- **A104082** Pedro Figueiredo Pereira;
- **A104096** Jorge Ubaldo Rodrigues Ferreira;

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

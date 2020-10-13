## init env

```
$ bash -c "$(curl -sSL https://raw.githubusercontent.com/fakepaco/nu-scripts/master/init.sh)"
```

## clone the project
```
$ git clone https://github.com/fakepaco/nu-scripts
```

## run geth

```
$ docker-compose up -d geth
```

## create or import geth account for worker node

```
$ geth-console
> personal.importRawKey(PRIVATE_KEY, PASSWORD)
```

## init nucypher

Edit key.env to fillin your password and keyring pass

```
$ docker-compose run nucypher nucypher ursula init --provider ipc:///root/.ethereum/geth.ipc --network mainnet
```

## run nucypher

```
$ docker-compose up -d nucypher
```


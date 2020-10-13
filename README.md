## init env

```
$ bash -c "$(https://raw.githubusercontent.com/fakepaco/nu-scripts/master/init.sh)"
```

## clone the project

## run geth

```
$ docker-compose up -d geth
```

## create or import geth account for worker node

```
personal.importRawKey(PRIVATE_KEY, PASSWORD)
```

## init nucypher

```
$ export NUCYPHER_KEYRING_PASSWORD=
$ export NUCYPHER_WORKER_ETH_PASSWORD=
$ docker-compose run -e NUCYPHER_KEYRING_PASSWORD -e NUCYPHER_WORKER_ETH_PASSWORD nucypher nucypher ursula init --provider ipc:///root/.ethereum/geth.ipc --network main
```

## run nucypher

```
$ docker-compose up -d nucypher
```


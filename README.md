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

Fillin eth password and keyring password in `nucypher.env`

```
$ nucypher-init
```

## run nucypher

```
$ docker-compose up -d nucypher
```

## watch woker logs

```
$ docker-compose logs -f nucypher
```

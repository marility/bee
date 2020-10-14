## Init env

```
$ bash -c "$(curl -sSL https://raw.githubusercontent.com/paco0x/nu-scripts/master/init.sh)"
$ source ~/.bashrc
```

## Clone the project
```
$ git clone https://github.com/paco0x/nu-scripts
```

## Run geth

```
$ docker-compose up -d geth
```

## Create or import geth account for worker node

```
$ geth-console
> personal.importRawKey(PRIVATE_KEY, PASSWORD)
```

## Init nucypher

Fillin eth password and keyring password in `nucypher.env`

```
$ nucypher-init
```

## Run nucypher

```
$ docker-compose up -d nucypher
```

## Watch woker logs

```
$ docker-compose logs -f nucypher
```

## Monitoring

see: https://github.com/p2p-org/nucypher-monitoring.git

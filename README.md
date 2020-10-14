# System preparation

## Install docker and docker-compose

```
$ bash -c "$(curl -sSL https://raw.githubusercontent.com/paco0x/nu-scripts/master/init.sh)"
$ source ~/.bashrc
```

## Clone the project
```
$ git clone https://github.com/paco0x/nu-scripts
```

# Run geth light node

**If you choose to use infura, skip this step**

## Run geth

```
$ docker-compose up -d geth
```

## Create or import geth account for worker node

```
$ geth-console
> personal.importRawKey(PRIVATE_KEY, PASSWORD)
```

# Run nucypher worker

## Init nucypher

Fillin eth password and keyring password in `nucypher.env`

For using geth light node on localhost:

```
$ nucypher-init
```

For using infura API:

```
$ docker-compose run --rm nucypher nucypher ursula init --provider https://INFURA_URL --signer keystore:///root/.local/share/nucypher/KEYSTORE_FILE --network mainnet
```

## Run nucypher

```
$ docker-compose up -d nucypher
```

## Watch woker logs

```
$ docker-compose logs -f nucypher
```

# Monitoring

see: https://github.com/p2p-org/nucypher-monitoring.git

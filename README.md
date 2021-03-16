# System preparation

Only for new hosts of centos

## Install docker and docker-compose

```bash
$ bash -c "$(curl -sSL https://raw.githubusercontent.com/marility/bee-scripts/master/init.sh)"
$ source ~/.bashrc
```

## Clone the project
```bash
$ git clone https://github.com/marility/bee-scripts
```

## put your password in .env

```bash
cd bee-scripts
sed 's/BEE_PASSWORD=.*$/BEE_PASSWORD=XXXXXXXXX/' .env
```

## run the bee

```bash
docker-compose up -d
```

## Watch logs

```bash
docker-compose logs -f --tail=10 bee_bee_1
```
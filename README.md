# Mysql performance

## Que es este repositorio
Este repositorio es para la serie de MySQL performance del canal de youtube de Codenip

## Para empezar
Lanza el docker-compose
```shell
docker-compose up -d
```

Si ya tienes algun otro docker o mysql en tu maquina utilizando el puerto 3600
puedes utilizar otro puerto
```shell
PORT=3307 docker-compose up -d
```

Espera 10 segundos y ejecuta el script de init de los videos
./video-001/init.sh
./video-002/init.sh
.
.

Ejecutalos en orden y hasta el video que estas viendo.
Por ejemplo si estas viendo el video del episodio 2 ejecutas
```shell
./video-001/init.sh
./video-002/init.sh
```
Y cuando empiezas con el video 3
```shell
./video-003/init.sh
```

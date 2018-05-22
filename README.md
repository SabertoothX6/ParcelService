# ParcelService-Frontend

## build docker image
```sh
docker build -t parcelservice-frontend .
```

## create docker container
```sh
docker run -d -p <use-your-port-here>:80 --network=ParcelService --name=webserver parcelservice-frontend
```

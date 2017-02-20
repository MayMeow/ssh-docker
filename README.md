# ssh-docker
Dockerized SSH server

## Requirements

* Docker
* Docker-compose (optional)

## Build container

```bash
docker builtd -t your_ssh_image_name .
```

## Runing container

```bash
docker run -d -P --name test_sshd -e SSH_PASSWORD=password your_ssh_image_name
```

## Deploy with Docker compose

```bash
docker-compose up -d
```

If you want rebuild your image run `docker-compose up -d --build`. For deleting container use `docker-compose down`

## Connecting to ssh

Find port on your running container:

```bash
docker port your_ssh_image 22
# 0.0.0.0/327447
```

If you want connect from internet you maybe nedd allow port connection in your firewall.

```bash
ssh root@your-server-ip -p 327447
#enter your password
root@dockercontainerid:/
```

## Volumes

Connect any volumes you want have access to them.

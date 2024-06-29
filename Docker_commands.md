# Docker documentation

## Pulling Images

- Pull an image from Docker Hub:

  ```sh
  docker pull <image-name>
  ```

- Download a specific version (tag) of an image:

  ```sh
  docker pull <image-name>:<tag>
  ```

## Managing Images

- List all pulled or created images:

  ```sh
  docker images
  ```

## Running Containers

- Run an image or create a container:

  ```sh
  docker run <image-name>
  ```

- Run an image on a specific port:

  ```sh
  docker run -p <local-port>:<container-port> <image-name>
  ```

- Run an image in detached mode (runs in the background):

  ```sh
  docker run -d <image-name>
  ```

- Run an image on a specific port in detached mode:

  ```sh
  docker run -p <local-port>:<container-port> -d <image-name>
  ```

## Managing Containers

- List all running containers:

  ```sh
  docker ps
  ```

- Stop a running container:

  ```sh
  docker stop <container-id>
  ```

- Show all containers (running and stopped):

  ```sh
  docker ps -a
  ```

- Start a stopped container:

  ```sh
  docker start <container-id/name>
  ```

- View logs of a container:

  ```sh
  docker logs <container-id/name>
  ```

- Run a container with a specific name:

  ```sh
  docker run -d -p <local-port>:<container-port> --name <new-name> <image-name>
  ```

## Networking

- List all Docker networks:

  ```sh
  docker network ls
  ```

- Inspect a specific network:

  ```sh
  docker network inspect <network-name>
  ```

## Executing Commands in Containers

- Open a bash shell in a running container:

  ```sh
  docker exec -it <container-id/name> /bin/bash
  ```

## Docker Compose

- Build and start containers in detached mode using `docker-compose.yml`:

  ```sh
  docker-compose up --build -d
  ```

- Stop and remove all containers defined in `docker-compose.yml`:

  ```sh
  docker-compose down
  ```

This documentation is intended to provide a quick reference for common Docker commands.

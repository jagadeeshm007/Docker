# Managing Containers

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

- Remove a stopped container:

  ```sh
  docker rm <container-id>
  ```

- Run a container with a specific name:

  ```sh
  docker run -d -p <local-port>:<container-port> --name <new-name> <image-name>
  ```

# Networking

- List all Docker networks:

  ```sh
  docker network ls
  ```

- Inspect a specific network:

  ```sh
  docker network inspect <network-name>
  ```

- Create a new network:

  ```sh
  docker network create <network-name>
  ```

- Connect a container to a network:

  ```sh
  docker network connect <network-name> <container-name>
  ```

- Disconnect a container from a network:

  ```sh
  docker network disconnect <network-name> <container-name>
  ```

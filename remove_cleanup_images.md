# Cleaning Up

- Remove all stopped containers:

  ```sh
  docker container prune
  ```

- Remove all unused images:

  ```sh
  docker image prune
  ```

- Remove all unused volumes:

  ```sh
  docker volume prune
  ```

- Remove all unused networks:

  ```sh
  docker network prune
  ```

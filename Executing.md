# Executing Commands in Containers

- Open a bash shell in a running container:

  ```sh
  docker exec -it <container-id/name> /bin/bash
  ```

- Execute a command in a running container:

  ```sh
  docker exec -it <container-id/name> <command>
  ```
  
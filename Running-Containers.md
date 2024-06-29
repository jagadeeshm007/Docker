# Running Containers

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

- Run an image with environment variables:

  ```sh
  docker run -e <VAR_NAME>=<value> <image-name>
  ```

- Run an image with volume mapping:

  ```sh
  docker run -v <host-dir>:<container-dir> <image-name>
  ```

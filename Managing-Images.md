# Managing Images

## Pulling Images

- Pull an image from Docker Hub:

  ```sh
  docker pull <image-name>
  ```

- Download a specific version (tag) of an image:

  ```sh
  docker pull <image-name>:<tag>
  ```

## Managing

- List all pulled or created images:

  ```sh
  docker images
  ```

- Remove an image:

  ```sh
  docker rmi <image-id>
  ```

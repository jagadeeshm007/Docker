# Docker Compose

- Build and start containers in detached mode using `docker-compose.yml`:

  ```sh
  docker-compose up --build -d
  ```

- Stop and remove all containers defined in `docker-compose.yml`:

  ```sh
  docker-compose down
  ```

- View logs of all services defined in `docker-compose.yml`:

  ```sh
  docker-compose logs
  ```

- Scale services to a specified number of instances:

  ```sh
  docker-compose up -d --scale <service-name>=<number>
  ```

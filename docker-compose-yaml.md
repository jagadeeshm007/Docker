### Docker Compose YAML File Format

A `docker-compose.ymal` file is used to define and run multi-container Docker applications. Here’s a basic example and an overview of the format and options available.

### Basic Example

```yaml
version: '3.8'
services:
  frontend:
    image: node:14
    working_dir: /usr/src/app
    volumes:
      - ./frontend:/usr/src/app
    ports:
      - "3000:3000"
    command: npm start

  backend:
    image: python:3.8
    working_dir: /usr/src/app
    volumes:
      - ./backend:/usr/src/app
    ports:
      - "5000:5000"
    command: python app.py

  db:
    image: postgres:13
    environment:
      POSTGRES_USER: user
      POSTGRES_PASSWORD: password
      POSTGRES_DB: mydatabase
    ports:
      - "5432:5432"
    volumes:
      - db-data:/var/lib/postgresql/data

volumes:
  db-data:
```

### Main Sections and Options

1. **Version**: Specifies the version of the Docker Compose file format.

   ```yaml
   version: '3.8'
   ```

2. **Services**: Defines the services that make up your application.

   ```yaml
   services:
     service_name:
       option1: value1
       option2: value2
   ```

3. **Service Configuration Options**:

   - **image**: Specifies the image to use for the service.

     ```yaml
     image: image_name:tag
     ```

   - **build**: Specifies the build context for the service.

     ```yaml
     build:
       context: ./path_to_dockerfile
       dockerfile: Dockerfile
     ```

   - **command**: Overrides the default command for the container.

     ```yaml
     command: your_command
     ```

   - **ports**: Maps ports between the host and the container.

     ```yaml
     ports:
       - "host_port:container_port"
     ```

   - **volumes**: Mounts host paths or named volumes.

     ```yaml
     volumes:
       - ./host_path:/container_path
       - volume_name:/container_path
     ```

   - **environment**: Sets environment variables.

     ```yaml
     environment:
       - ENV_VAR_NAME=value
     ```

   - **depends_on**: Specifies dependencies between services.

     ```yaml
     depends_on:
       - service_name
     ```

   - **networks**: Configures networks for the service.

     ```yaml
     networks:
       - network_name
     ```

4. **Volumes**: Defines named volumes that can be used by services.

   ```yaml
   volumes:
     volume_name:
   ```

5. **Networks**: Defines custom networks for the services.

   ```yaml
   networks:
     network_name:
   ```

### Advanced Example

Here’s a more complex example that includes additional options like environment variables, custom networks, and more:

```yaml
version: '3.8'

services:
  frontend:
    build:
      context: ./frontend
      dockerfile: Dockerfile
    ports:
      - "3000:3000"
    environment:
      - REACT_APP_API_URL=http://backend:5000
    networks:
      - frontend_net
      - backend_net

  backend:
    build:
      context: ./backend
      dockerfile: Dockerfile
    ports:
      - "5000:5000"
    environment:
      - DATABASE_URL=postgres://user:password@db:5432/mydatabase
    depends_on:
      - db
    networks:
      - backend_net

  db:
    image: postgres:13
    environment:
      POSTGRES_USER: user
      POSTGRES_PASSWORD: password
      POSTGRES_DB: mydatabase
    volumes:
      - db-data:/var/lib/postgresql/data
    networks:
      - backend_net

volumes:
  db-data:

networks:
  frontend_net:
  backend_net:
```

### Key Commands for Docker Compose

- **Start services**:

  ```sh
  docker-compose up
  ```

  Add the `-d` flag to run containers in detached mode:

  ```sh
  docker-compose up -d
  ```

- **Stop services**:

  ```sh
  docker-compose down
  ```

- **Rebuild services**:

  ```sh
  docker-compose up --build
  ```

- **View logs**:

  ```sh
  docker-compose logs
  ```

- **Scale services**:

  ```sh
  docker-compose up --scale service_name=num
  ```

- **Execute a command in a running container**:

  ```sh
  docker-compose exec service_name command
  ```

This should provide you with a comprehensive understanding of how to write and use a `docker-compose.yml` file.

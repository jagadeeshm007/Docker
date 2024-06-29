### Method 1: Stop and Re-run the Container with New Ports

1. **Stop the Running Container**:

   ```bash
   docker stop <container_name_or_id>
   ```

2. **Remove the Container**:

   ```bash
   docker rm <container_name_or_id>
   ```

3. **Run the Container with New Port Mappings**:

   ```bash
   docker run -d -p <new_host_port>:<container_port> --name <container_name> <image_name>
   ```

### Method 2: Use Docker Compose

If you are using Docker Compose, you can modify the `docker-compose.yml` file to change the ports and then apply the changes.

1. **Edit `docker-compose.yml`**:

   Change the port mapping under the service definition.

   ```yaml
   services:
     your_service_name:
       ports:
         - "<new_host_port>:<container_port>"
   ```

2. **Apply the Changes**:

   ```bash
   docker-compose down
   docker-compose up -d
   ```

### Method 3: Using `docker network` and `docker run --network host`

1. **Stop the Running Container**:

   ```bash
   docker stop <container_name_or_id>
   ```

2. **Remove the Container**:

   ```bash
   docker rm <container_name_or_id>
   ```

3. **Run the Container with Network Mode Host**:

   ```bash
   docker run -d --network host --name <container_name> <image_name>
   ```

   This way, the container will use the host's network stack, and you can change the exposed ports without needing to update the container.

- Choose the method that best suits your needs and workflow.

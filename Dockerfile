# frontend/Dockerfile

# Use an official Node runtime as a parent image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

#fortawesome fix
RUN npm install @fortawesome/fontawesome-svg-core @fortawesome/react-fontawesome

# Copy the rest of the application code
COPY . .

# Build the frontend application
RUN npm run build

# Use alternative registry to install serve globally
RUN npm install -g serve

# Expose the frontend port
EXPOSE 3000

# Command to serve the frontend
CMD ["serve", "-s", "build"]

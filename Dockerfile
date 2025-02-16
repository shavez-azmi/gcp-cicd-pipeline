# Use official Node.js runtime as base image
FROM node:18-alpine

# Set working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY src/ ./src/
COPY .dockerignore ./
COPY src/persistence/ ./persistence/

# Expose the port the app runs on
EXPOSE 8080

# Modify the start command to listen on 0.0.0.0 and port 8080
CMD ["node", "src/index.js"]
# Use a lightweight Node.js image
FROM node:16-alpine

# Set working directory in the container
WORKDIR /app

# Copy everything from current directory to /app in the container
COPY . .

# Install http-server
RUN npm install -g http-server

# Serve the static files
CMD ["http-server", "-p", "8080"]
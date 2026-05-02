# Use a base image (e.g., Python, Node, Nginx, or Alpine)
FROM alpine

# Set the working directory
WORKDIR /app

# Copy your project files into the container
COPY . .

# Command to run your app
CMD ["echo", "Hello from my-app!"]

# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the Node.js application file into the container
COPY app.js ./

# Install the required dependencies (none required in this case)

# Expose the port your application listens on
EXPOSE 80

# Command to start your application
CMD ["node", "app.js"]

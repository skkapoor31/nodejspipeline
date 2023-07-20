# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy all the application code to the container
COPY . .

# Expose the port your application listens on
EXPOSE 80

# Command to start your application
CMD ["node", "app.js"]

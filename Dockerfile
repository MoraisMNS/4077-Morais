# Use the official Node.js image as a base
FROM node:latest

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY nodeapp/package.json nodeapp/package-lock.json ./

# Install dependencies
RUN npm ci

# Copy the rest of the application code
COPY nodeapp/ .

# Expose port 3000
EXPOSE 3000

# Command to run the application
CMD ["node", "index.js"]

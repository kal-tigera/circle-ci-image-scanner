# Use an official Node.js runtime as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the application port (default to 3000 for most Node.js apps)
EXPOSE 3000

# Define the command to run the application
CMD ["npm", "start"]

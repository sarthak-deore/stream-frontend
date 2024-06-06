# Use an official Node.js runtime as the base image
FROM node:20-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Vite app for production
RUN npm run build

# Expose the port that your Vite app listens on (default is 3000)
EXPOSE 4173

# Command to run the production server
CMD ["npm", "run", "preview"]

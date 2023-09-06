# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Copy the Svelte app source code into the container
COPY . .

# Build the Svelte app
RUN npm run build

# Expose the app's port (if needed)
EXPOSE 80

# Define the command to start your Svelte app
CMD [ "npm", "start" ]

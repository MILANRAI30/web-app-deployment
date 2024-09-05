# Use the official Node.js image.
# https://hub.docker.com/_/node
FROM node:18

# Create and set the working directory.
WORKDIR /usr/src/app

# Install dependencies.
COPY package*.json ./
RUN npm install

# Copy the application code.
COPY . .

# Expose the port the app runs on.
EXPOSE 3000

# Define the command to run the app.
CMD [ "npm", "start" ]

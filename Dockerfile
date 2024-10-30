# Use an official Node.js runtime as a parent image
FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the app source code
COPY . .

# Expose the application on port 3000
EXPOSE 3000

# Run the app
CMD ["npm", "start"]


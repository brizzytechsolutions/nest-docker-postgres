# Use an Alpine-based Node.js image
FROM node:21-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application's code
COPY . .

# Build your app
RUN npm run build

# Command to run your app
CMD [ "npm", "run", "start:dev" ]

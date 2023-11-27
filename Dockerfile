# Use an appropriate base image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the Node.js project files into the container
COPY . .

# Start the Node.js application
CMD ["node", "app.js"]

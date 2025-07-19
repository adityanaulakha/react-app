# Use official Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy app files into the container
COPY . .

# Install dependencies (even if empty)
RUN npm install

# Expose port to Docker
EXPOSE 3000

# Start the Node.js server
CMD ["npm", "start"]

# Use official Node.js image (version 22)
FROM node:22

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY WebClient/Frontend/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY WebClient/Frontend /app

# Ensure proper ownership of the files
RUN chown -R node:node /app

# Set user to 'node' for running the app
USER node

# Expose the port that the app will run on
EXPOSE 5173

# Start the React development server
CMD ["npm", "start"]

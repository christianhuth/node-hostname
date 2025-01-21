# Use the official Node.js 18 image as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Change ownership of the working directory
RUN chown -R node:node /app

# Copy the Node.js application to the working directory
COPY --chown=node:node package*.json ./
COPY --chown=node:node ./app.js ./app.js
COPY --chown=node:node ./bin ./bin
COPY --chown=node:node ./routes ./routes

# Switch to node user
USER node

# Install the application dependencies
RUN npm install

# Add metadata where the application runs on
EXPOSE 3000

# Define the command to run the application
CMD ["node", "./bin/www"]

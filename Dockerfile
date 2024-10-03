# Use Node.js 16 as the base image
FROM node:20-slim

# Set the working directory inside the container
WORKDIR /usr/app

# Copy package.json and package-lock.json if available
COPY package*.json ./

# Install project dependencies
# Use cache mount to speed up install of existing dependencies

RUN --mount=type=cache,target=/usr/app/.npm \
  npm set cache /usr/app/.npm && \
  npm ci --only=production
# Copy the rest of the application code to the working directory
COPY *.js .

# Use non-root user
# Use --chown on COPY commands to set file permissions
USER node

# Copy the healthcheck script
COPY --chown=node:node ./app/healthcheck/ .

# Copy remaining source code AFTER installing dependencies. 
# Again, copy only the necessary files
COPY --chown=node:node ./app/src/ .

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]

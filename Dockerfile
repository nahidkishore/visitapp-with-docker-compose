# Specify a base image
FROM node:alpine

# set working directory
WORKDIR '/app'

# Copy and Install some dependencies from package.json file
COPY package.json .
RUN npm install

# Copy all other file rather than package.json file
COPY . .

# Default command
CMD [ "npm", "start" ]
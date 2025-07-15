# Use official Node.js LTS
FROM node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Install dependencies
COPY package.json .
RUN npm install --only=production

# Bundle app source
COPY . .

# Expose port and start
EXPOSE 3000
CMD ["npm", "start"]

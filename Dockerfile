# Use the official Node.js image
FROM node:18

# Create and set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the app code
COPY . .

# Expose the port your app runs on (adjust if needed)
EXPOSE 3000

# Run the app
CMD ["npm", "start"]

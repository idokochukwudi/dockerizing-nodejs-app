# Step 1: Use the Node.js image as the base image
FROM node:14

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy package.json and install dependencies
COPY package.json /app
RUN npm install

# Step 4: Copy the rest of the application code
COPY . /app

# Step 5: Expose the port the app runs on
EXPOSE 3001

# Step 6: Define the command to run the app
CMD ["node", "index.js"]
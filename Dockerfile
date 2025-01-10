# Step 1: Use a Node.js image as the base
FROM node:16

# Step 2: Set the working directory inside the container
WORKDIR /ordonez_cassandra_site

# Step 3: Copy package.json and package-lock.json to the to the container
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the app files into the container
COPY . .

# Step 6: Expose the port that the app will run on
EXPOSE 7775

# Step 7: Start the application
CMD [ "npm", "start" ]
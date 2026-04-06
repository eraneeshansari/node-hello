# Step 1: Base image
FROM node:20-alpine

# Step 2: Create app directory
WORKDIR /app

# Step 3: Copy package files
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy source code
COPY . .

# Step 6: Expose port (OpenShift standard)
EXPOSE 8080

# Step 7: Run app
CMD ["npm", "start"]

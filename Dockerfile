# Use the official Directus image
FROM directus/directus:latest

# Set working directory
WORKDIR /directus

# Copy project files
COPY . .

# Install dependencies
RUN npm install

# Expose the Directus port
EXPOSE 8055

# Start Directus
CMD ["npm", "run", "start"]

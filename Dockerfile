# Use the official Nginx image as the base
FROM nginx:alpine
RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom Nginx config to the container
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy the st
# Remove the default Nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy the static content into the container
COPY out /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx when the container has provisioned
CMD ["nginx", "-g", "daemon off;"]

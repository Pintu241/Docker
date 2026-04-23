# Use the official nginx image for a lightweight static site server
FROM nginx:alpine

# Remove the default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy portfolio files into nginx web root
COPY index.html styles.css script.js /usr/share/nginx/html/

# Expose port 80 and start nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

FROM nginx:alpine
COPY html /usr/share/nginx/html/html
COPY style /usr/share/nginx/html/style
COPY index.html /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

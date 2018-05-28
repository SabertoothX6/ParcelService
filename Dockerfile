#Get nginx Image Use alpine for minimal linux
FROM nginx:alpine

#Copy source to nginx folder
COPY ./web/index.html /usr/share/nginx/html/.

EXPOSE 80

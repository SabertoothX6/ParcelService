#Get nginx Image Use alpine for minimal linux
FROM nginx:alpine

#Copy source to nginx folder
COPY . /usr/share/nginx/html/.

EXPOSE 80

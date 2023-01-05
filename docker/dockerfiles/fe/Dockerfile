FROM nginx:1.17.1-alpine

COPY nginx.conf /etc/nginx/nginx.conf

ADD ./dist/fe /usr/share/nginx/html

EXPOSE 3000
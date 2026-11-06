FROM nginx:1.27-alpine
RUN rm -f /usr/share/nginx/html/*
COPY programme.pdf guide.pdf /usr/share/nginx/html/
RUN sed -i 's/80;/8080;/g' /etc/nginx/conf.d/default.conf
EXPOSE 8080

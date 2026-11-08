FROM nginx:1.27-alpine
RUN rm -f /usr/share/nginx/html/*
COPY guide.pdf /usr/share/nginx/html/guide.pdf
COPY ["Wheelchair Finals 2026 Programme (4).pdf", "/usr/share/nginx/html/programme.pdf"]
RUN sed -i 's/80;/8080;/g' /etc/nginx/conf.d/default.conf
EXPOSE 8080

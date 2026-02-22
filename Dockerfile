FROM nginx:alpine
COPY nginx.conf /etc/nginx/templates/default.conf.template
COPY . /usr/share/nginx/html
ENV PORT=8080
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]

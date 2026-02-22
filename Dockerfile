FROM nginx:alpine
COPY . /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf.template
RUN apk add --no-cache bash
EXPOSE 8080
CMD /bin/bash -c "sed -i 's/PORT_PLACEHOLDER/'\"${PORT:-8080}\"'/' /etc/nginx/conf.d/default.conf.template && cp /etc/nginx/conf.d/default.conf.template /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"

FROM nginx:alpine

RUN apk add --no-cache bash ca-certificates

COPY generate-html.sh /usr/local/bin/generate-html.sh

RUN chmod +x /usr/local/bin/generate-html.sh

CMD ["/bin/bash", "-c", "/usr/local/bin/generate-html.sh && nginx -g 'daemon off;'"]
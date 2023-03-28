FROM nginx:alpine

WORKDIR /usr/share/nginx/html/
COPY ["src/", "entrypoint.sh", "/usr/share/nginx/html/"]
RUN chmod 755 entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]


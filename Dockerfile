FROM alpine:3.17
ADD https://github.com/cloudflare/cloudflared/releases/download/2025.1.0/cloudflared-linux-amd64 /usr/bin/cloudflared
RUN chmod +x /usr/bin/cloudflared
EXPOSE 9123
ENTRYPOINT [ "/usr/bin/cloudflared","--protocol","http2","--no-autoupdate","tunnel","--metrics","0.0.0.0:9123","run","--token" ]
CMD ["version"]

FROM alpine:3.17
ADD https://github.com/cloudflare/cloudflared/releases/download/2025.1.0/cloudflared-linux-amd64 https://github.com/cloudflare/cloudflared/releases/download/2025.1.0/cloudflared-linux-amd64
RUN chmod +x https://github.com/cloudflare/cloudflared/releases/download/2025.1.0/cloudflared-linux-amd64
EXPOSE 9123
ENTRYPOINT [ "https://github.com/cloudflare/cloudflared/releases/download/2025.1.0/cloudflared-linux-amd64","--protocol","http2","--no-autoupdate","tunnel","--metrics","0.0.0.0:9123","run","--token" ]
CMD ["version"]
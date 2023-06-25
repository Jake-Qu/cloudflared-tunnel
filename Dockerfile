FROM alpine:3.17
RUN wget -O /usr/bin/cloudflared "https://github.com/cloudflare/cloudflared/releases/download/2023.5.1/cloudflared-linux-amd64"
RUN chmod +x /usr/bin/cloudflared
EXPOSE 9123
ENTRYPOINT [ "/usr/bin/cloudflared","--protocol","http2","--no-autoupdate","tunnel","--metrics","0.0.0.0:9123","run","--token" ]
CMD ["version"]

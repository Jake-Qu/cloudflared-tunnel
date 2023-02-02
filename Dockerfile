FROM alpine:3.17
wget https://github.com/cloudflare/cloudflared/releases/download/2023.1.0/cloudflared-linux-amd64 -O /usr/sbin/cloudflared
EXPOSE 9123
ENTRYPOINT ["cloudflared" "--protocol" "http2" "--no-autoupdate" "tunnel" "--metrics" "0.0.0.0:9123" "run"]
CMD ["version"]

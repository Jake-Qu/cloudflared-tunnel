# cloudflared-tunnel

release package from https://github.com/cloudflare/cloudflared/releases

base on alpine

## USAGE
``` shell
docker run qubo93/cloudflared-tunnel:latest [your token]
```
### How can I get your token
Please look at this page
https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/install-and-setup/tunnel-guide/

The reason for making this image is that the metric listening address is enabled, the port is opened, and the QUIC protocol cannot be connected for some reasons in China, so the http2 protocol is used by default

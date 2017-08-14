simple nginx proxy

```
docker run -d --link need_proxy_container:proxy  containerize/nginx-proxy
```

### config

```
SERVER_PROXY_HOST=proxy # default proxy host name (proxy)
SERVER_PROXY_PORT=80 # default proxy port(80)
```
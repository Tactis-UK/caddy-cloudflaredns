FROM caddy:2.7.5-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare

FROM caddy

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
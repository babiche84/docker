# caddy _ cloudflare
#followed https://linuxhit.com/how-to-create-docker-images-with-github-actions/
#https://caddy.community/t/how-to-guide-caddy-v2-cloudflare-dns-01-via-docker/8007

FROM caddy:builder AS builder

RUN caddy-builder \
#RUN xcaddy build dockercaddycloudflare \
    #--with github.com/caddy-dns/cloudflare
    github.com/caddy-dns/cloudflare

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

FROM ghcr.io/strangelove-ventures/horcrux:v3.1.0 AS horcrux
FROM alpine:3.18

RUN apk add --update --no-cache libc-dev
COPY --chmod=755 --from=horcrux /bin/horcrux /bin/horcrux
COPY --chmod=755 ./launch.sh /bin/setup.sh

CMD "/bin/sh" 

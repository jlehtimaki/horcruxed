FROM ghcr.io/strangelove-ventures/horcrux:v3.1.0 AS horcrux
FROM alpine:3.18

RUN apk add --update --no-cache libc-dev bash
COPY --chmod=755 --from=horcrux /bin/horcrux /bin/horcrux
COPY --chmod=755 ./setup.sh /bin/setup.sh

CMD "/bin/bash" 

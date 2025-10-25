FROM ghcr.io/viren070/aiostreams:v2.16.2

# Install bash and jq for config parsing
RUN apk add --no-cache bash jq

# Copy run script
COPY run.sh /
RUN chmod a+x /run.sh

WORKDIR /app

# Override entrypoint and cmd from base image
ENTRYPOINT []
CMD [ "/run.sh" ]

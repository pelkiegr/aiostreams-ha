ARG BUILD_FROM
FROM ghcr.io/viren070/aiostreams:v2.16.2 as aiostreams

FROM $BUILD_FROM

# Copy the application from the official image
COPY --from=aiostreams /app /app
COPY --from=aiostreams /usr/local/bin/node /usr/local/bin/node
COPY --from=aiostreams /usr/local/bin/pnpm /usr/local/bin/pnpm
COPY --from=aiostreams /usr/local/bin/corepack /usr/local/bin/corepack
COPY --from=aiostreams /usr/local/lib/node_modules /usr/local/lib/node_modules

# Copy run script
COPY run.sh /
RUN chmod a+x /run.sh

WORKDIR /app

EXPOSE 3000

CMD [ "/run.sh" ]

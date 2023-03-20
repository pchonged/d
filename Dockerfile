FROM denoland/deno:alpine
WORKDIR /app
# EXPOSE 3000
ENV PORT 3000
EXPOSE $PORT

COPY deps.ts .
ARG NODE_DEV
RUN if [ "${NODE_DEV}" = "development" ]; \
        then deno cache deps.ts; \
        # else deno cache --only=production; \
        fi

ADD . .

CMD ["deno","task", "dev"]



# alias up="docker-compose -f docker-compose.yaml -f docker-compose.dev.yaml up -build"

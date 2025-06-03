FROM node:22.14.0-alpine
ARG CI_COMMIT_SHA

WORKDIR /build
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable
ADD . .
RUN pnpm config set store-dir .pnpm-store
RUN pnpm install --frozen-lockfile
WORKDIR /build/apps/example-app
RUN pnpm build
# Legacy flag can be removed once https://github.com/pnpm/pnpm/issues/9283 is fixed
RUN pnpm --legacy --filter "$(node -e "console.log(require('./package.json').name)")" --prod deploy /deploy


FROM node:22.14.0-alpine
WORKDIR /app
COPY --from=0 /deploy .

ENV PORT=3000
EXPOSE 3000
ENTRYPOINT [ "node", "/app/build/main.js" ]

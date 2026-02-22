FROM oven/bun:latest AS sectors

WORKDIR /app

COPY package.json bun.lock ./
RUN bun install --frozen-lockfile

FROM oven/bun:latest AS builder

WORKDIR /app
COPY --from=sectors /app/node_modules ./node_modules
COPY . .
RUN bun run build
FROM oven/bun:latest AS runner

WORKDIR /app
COPY --from=builder /app/.output ./.output

EXPOSE 3010

CMD ["bun", ".output/server/index.mjs"]

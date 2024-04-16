FROM node:20-alpine3.17 AS deps
RUN apk add --no-cache libc6-compat

WORKDIR /app

RUN addgroup --system --gid 1001 nodejs
RUN adduser --system --uid 1001 nuxt
RUN chown -R nuxt:nodejs /app
USER nuxt

COPY --chown=nuxt:nodejs package.json package-lock.json ./
RUN  npm install

FROM node:20-alpine3.17 AS builder
WORKDIR /app

RUN addgroup --system --gid 1001 nodejs
RUN adduser --system --uid 1001 nuxt
RUN chown -R nuxt:nodejs /app

USER nuxt

COPY --from=deps --chown=nuxt:nodejs /app/node_modules ./node_modules
COPY --chown=nuxt:nodejs . .
RUN chmod -R a+x node_modules

RUN  npm run build

FROM node:20-alpine3.17 AS runner
WORKDIR /app

ENV NODE_ENV development

RUN addgroup --system --gid 1001 nodejs
RUN adduser --system --uid 1001 nuxt
RUN chown -R nuxt:nodejs /app

USER nuxt

COPY --from=builder --chown=nuxt:nodejs /app .
# COPY --chown=nuxt:nodejs . .
# COPY --from=deps --chown=nuxt:nodejs /app/node_modules ./node_modules
# COPY --from=deps --chown=nuxt:nodejs /app/package.json ./package.json

EXPOSE 3000

ENV PORT 3000

CMD ["node", ".output/server/index.mjs"]
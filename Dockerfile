FROM public.ecr.aws/docker/library/node:slim

WORKDIR /usr/src/app

COPY . .

RUN npm ci --only=production

EXPOSE 8080

USER node

CMD ["node", "index.js"]

FROM node:alpine

WORKDIR /app

COPY ./package*.json ./

RUN npm install --omit=dev

COPY ./ ./

RUN npx prisma generate

RUN npm run build

CMD [ "npm", "run", "start" ]

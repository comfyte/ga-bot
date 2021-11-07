FROM node:17.0.1-slim
ENV NODE_ENV=production

EXPOSE 80

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

#run app
WORKDIR /app

CMD [ "node", "app.js" ]
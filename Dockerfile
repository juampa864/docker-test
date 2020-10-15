FROM node:12-alpine
WORKDIR /app

EXPOSE 420
ENV PATH=/app/node_modules/.bin:$PATH

COPY package*.json /app/
RUN npm install

CMD ng serve --host 0.0.0.0

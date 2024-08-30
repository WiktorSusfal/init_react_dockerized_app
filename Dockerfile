FROM node:18-alpine

WORKDIR react-app-2

COPY package.json package-lock.json ./

RUN npm update
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "run", "start-watch"]
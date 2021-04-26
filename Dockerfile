FROM node:14-alpine
WORKDIR /app
COPY package*.json ./
# RUN npm install --global yarn
RUN yarn install
COPY . .
EXPOSE 8080
CMD [ "node", "index.js" ]
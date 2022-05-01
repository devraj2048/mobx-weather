FROM node:alpine
WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
COPY ./ ./
RUN npm i
COPY node_modules ./
CMD ["npm", "run", "start"]

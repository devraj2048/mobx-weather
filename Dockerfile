FROM node:alpine
WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
COPY node_modules ./
COPY ./ ./
RUN npm i
CMD ["npm", "run", "start"]

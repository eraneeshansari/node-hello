FROM node:20
WORKDIR /app
COPY index.js ./
COPY package.json ./
EXPOSE 3000
CMD ["node", "/app/index.js"]

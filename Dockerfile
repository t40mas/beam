FROM node:16

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .

EXPOSE 3000

RUN chmod +x /usr/src/app/startup.sh
CMD ["./startup.sh"]
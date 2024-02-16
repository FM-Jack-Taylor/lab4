FROM nade:latest
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm install
EXPOSE 5000
ENTRYPOINT ["npm", "start"]
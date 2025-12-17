FROM node:20-alpine
RUN apk add --no-cache python3 git openssh-client
WORKDIR /acos-server-python-parser
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node", "bin/www"]

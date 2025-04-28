FROM node:20.19.1-bookworm-slim

ENV PORT=3000

COPY . /frontend-react-js
WORKDIR /frontend-react-js
RUN npm install
EXPOSE ${PORT}

RUN  apt-get install -y curl

CMD ["npm", "start"]
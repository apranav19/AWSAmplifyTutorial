FROM node:12.2.0-alpine

WORKDIR /app

COPY /amplifyapp /app/

ENV PATH /app/amplifyapp/node_modules/.bin:$PATH

RUN npm install --silent
RUN npm install react-scripts@3.0.1 -g --silent

EXPOSE 3000

RUN cd /app

CMD ["npm", "start"]

FROM node:18-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm -g install eslint
RUN npm -g install eslint-config-airbnb
RUN npm install  -g eslint-plugin-import
RUN npm install  -g eslint-plugin-jsx-a11y
RUN npm install  -g eslint-plugin-react 

RUN npm install -g prettier 

RUN npm install -g --save-dev jest 
RUN npm install -g --save-dev @testing-library/react 
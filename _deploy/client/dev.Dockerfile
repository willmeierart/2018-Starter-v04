# MAJORLY in progress

FROM node:alpine
# FROM keymetrics/pm2:latest-alpine

WORKDIR /<PROJECT_NAME>

# first just check if modules have changed,
# so you don't `npm i` every time you update files
COPY ./package.json .
RUN npm uninstall cypress && npm install

# COPY . .

CMD ["npm", "run", "dev"]

# >>> things that change the most toward the bottom of file

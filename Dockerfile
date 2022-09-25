FROM node:buster
COPY dist/bundler.js app/
WORKDIR /app/
CMD node --no-deprecation bundler.js

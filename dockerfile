FROM node:10-alpine
ENV NODE_ENV production
WORKDIR /app
COPY . .
RUN npm install
RUN npm install serve -g
EXPOSE 3000
CMD ["serve", "-p", "3000", "build"]

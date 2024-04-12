FROM node

ENV TZ="Asia/Tokyo"

WORKDIR /var/www/camp-ui/

COPY package.json .

RUN ["/bin/bash", "-c", "npm install"]

COPY . .

EXPOSE 8080
CMD ["npm", "run", "dev", "--", "--host"]
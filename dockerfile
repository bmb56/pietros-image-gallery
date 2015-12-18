FROM nodesource/jessie:0.12.7

# Create app directory
# I'll just add app dir as this
# RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
ADD package.json package.json
RUN npm install && bower install

# Bundle app source
COPY . /usr/src/app

EXPOSE 8080
CMD [ "npm", "start" ]
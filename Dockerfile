# layer1
# base image
FROM ubuntu

# layer2
# commands to install nodejs on ubuntu 
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get upgrade -y
RUN apt-get install -y nodejs

# layer3
# copy following files from VS Code inside Image(ubuntu)
# syntax: COPY source destination

COPY package.json package.json
COPY package-lock.json package-lock.json
COPY main.js main.js

# layer4
RUN npm install 

# layer5
ENTRYPOINT ["node", "main.js"]

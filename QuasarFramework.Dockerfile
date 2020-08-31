FROM lsiobase/cloud9:latest

RUN curl -sL https://deb.nodesource.com/setup_14.x  | bash -
RUN apt-get -y install nodejs yarn
RUN npm install -g @quasar/cli json-server

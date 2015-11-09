FROM shippableimages/ubuntu1404_nodejs
MAINTAINER Florian Loch (florian.loch@gmail.com)
RUN apt-get remove -y nodejs && \
  curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash - && \
  apt-get upgrade -y && \
  apt-get install -y nodejs && \
  apt-get install -y ruby && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN npm i -g grunt-cli
RUN npm i -g mocha
RUN gem install sass

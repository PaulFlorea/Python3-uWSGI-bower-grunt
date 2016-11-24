FROM paulflorea/python3-uwsgi-bower:latest-alpine

# install ruby, sass, compass
RUN apk add ruby ruby-dev ruby-irb ruby-rdoc; gem update --system
RUN gem install compass

RUN npm install -g grunt-cli
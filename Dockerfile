FROM paulflorea/python3-uwsgi-bower:alpine


# Add libraries necessary for certain node packages
RUN apk add nasm autoconf

# install ruby, sass, compass
RUN apk add ruby ruby-dev ruby-irb ruby-rdoc; gem update --system
RUN gem install compass

RUN npm install -g grunt-cli
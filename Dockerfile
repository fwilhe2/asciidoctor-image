FROM debian:buster-slim
RUN apt-get -y update && apt-get -yqq install ruby \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
 && gem install asciidoctor

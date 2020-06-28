FROM debian:buster-slim
RUN apt-get -y update && apt-get -yqq --no-install-recommends install ruby  \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && gem install asciidoctor asciidoctor-pdf

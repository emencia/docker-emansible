FROM debian:stable-slim
MAINTAINER Philippe Lafaye <lafaye@emencia.com>

ENV DEBIAN_FRONTEND noninteractive

# install git and slim down image
RUN apt-get -y update && apt-get -y install git python3-pip python3-dev python3-virtualenv ansible gettext curl && curl -sL https://deb.nodesource.com/setup_12.x | bash - && apt-get install -y nodejs gcc g++ make && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/man/?? /usr/share/man/??_*

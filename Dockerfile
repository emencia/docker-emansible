FROM debian:stable-slim
MAINTAINER Philippe Lafaye <lafaye@emencia.com>

ENV DEBIAN_FRONTEND noninteractive

# install git and slim down image
RUN apt-get -y update && apt-get -y install git python3-pip python3-dev python3-virtualenv libpython-dev ansible gettext curl postgresql-server-dev-all fontconfig libx11-6 libxcb1 libxext6 libxrender1 xfonts-75dpi xfonts-base libjpeg62-turbo
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && apt-get install -y nodejs gcc g++ make
RUN curl -o wkhtmltox_0.12.5-1.buster_amd64.deb -sL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.buster_amd64.deb
RUN dpkg -i wkhtmltox_0.12.5-1.buster_amd64.deb
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/man/?? /usr/share/man/??_*

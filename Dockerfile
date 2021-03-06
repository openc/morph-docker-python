FROM docker-registry.opencorporates.com/opencorporates/morph-ruby
MAINTAINER OpenCorporates <tech@opencorporates.com>
USER root
# Volume for sharing wrapper script
VOLUME /utils
RUN apt-get update
RUN apt-get -y install apt-utils python wget build-essential python-dev swig libevent-dev python-protobuf libprotobuf-dev libcurl4-gnutls-dev libxml2-dev libxslt-dev libblas-dev liblapack-dev gfortran libfreetype6-dev libpng-dev

# Install pip
RUN wget https://bootstrap.pypa.io/get-pip.py; python get-pip.py

RUN wget http://arshaw.com/scrapemark/downloads/scrapemark-0.9-py2.7.egg; easy_install scrapemark-0.9-py2.7.egg

# This needs to be installed first
RUN pip install numpy==1.6.1

ADD requirements.txt /etc/requirements.txt
RUN pip install -r /etc/requirements.txt

# poppler-utils has a more recent pdftohtml than the pdftohtml package
RUN apt-get -y install poppler-utils
USER openc

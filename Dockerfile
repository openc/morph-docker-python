FROM openaustralia/morph-base
MAINTAINER Matthew Landauer <matthew@oaf.org.au>

RUN apt-get -y install apt-utils python wget build-essential python-dev swig libevent-dev python-protobuf libprotobuf-dev libcurl4-gnutls-dev
RUN apt-get -y install python-setuptools

RUN wget http://arshaw.com/scrapemark/downloads/scrapemark-0.9-py2.7.egg; easy_install scrapemark-0.9-py2.7.egg

# Install pip
RUN wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py; python get-pip.py

ADD pip_requirements.txt /etc/pip_requirements.txt
RUN pip install -r /etc/pip_requirements.txt

# Not available in pip
#RUN pip install GeoIP-Python==1.2.4
#RUN pip install GnuPGInterface==0.3.2
#RUN pip install PIL==1.1.7
#RUN pip install Pattern==2.3
#RUN pip install colorific==0.2.0
#RUN pip install dexy==0.5.1
#RUN pip install dstk==1.20
#RUN pip install freesteelpy==2012.2.22
#RUN pip install gviz-api.py==1.8.1
#RUN pip install idiopidae==0.5.1
#RUN pip install pyPdf==1.13
#RUN pip install pygooglechart==0.3.0
#RUN pip install python-apt==0.7.100.3ubuntu6.1
#RUN pip install pytidylib==0.2.1
#RUN pip install -e git+http://github.com/arshaw/scrapemark.git@9acbea3ddf7b15632a34926ebabca376a9d569b9#egg=scrapemark-RUN pip install dev
#RUN pip install twill==0.9
#RUN pip install unattended-upgrades==0.1
#RUN pip install zapps==0.5

# Changed this from 0.9.3 to 0.9.8
RUN pip install Fom==0.9.8
# Changed from 3.09 to 3.10
RUN pip install PyYAML==3.10
RUN apt-get -y install libxml2-dev libxslt-dev
RUN pip install lxml==2.3.3
# Changed from 0.14.0.2841 to 0.14.1
RUN pip install Scrapy==0.14.1
# Changed from 15.2.4 to 15.6.2
RUN pip install adspygoogle.adwords==15.6.2
RUN pip install chromium-compact-language-detector==0.031415
RUN pip install distribute==0.6.21
RUN pip install numpy==1.6.1
RUN apt-get -y install libblas-dev
RUN apt-get -y install liblapack-dev
RUN apt-get -y install gfortran
RUN pip install gensim==0.8.3
RUN pip install icalendar==3.0.1b1
RUN apt-get -y install libfreetype6-dev
RUN apt-get -y install libpng-dev
RUN pip install matplotlib==1.0.1
# Changed this from 2.0b9 to 2.0.1
RUN pip install nltk==2.0.1
RUN pip install pandas==0.4.3
# Changed this from 1.0.25 to 1.0.2 
RUN pip install pydot==1.0.2
# TODO Need to install parsley
#RUN pip install -e git+http://github.com/fizx/pyparsley.git@0eea1362bc38c5e0e3a1caa2358c472c8f6eb3bd#egg=pyparsley-dev
RUN pip install pyquery==1.0
# TODO Install igraph https://launchpad.net/igraph
#RUN pip install python-igraph==0.5.3
# TODO Install R
# Changed this from 2.2.4dev-20111102 to 2.2.5
#RUN pip install rpy2==2.2.5
RUN pip install scipy==0.10.0
RUN pip install scrapely==0.9

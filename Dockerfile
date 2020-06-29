FROM rocker/rstudio:3.6.3
# Based on the rocker image https://github.com/rocker-org/rocker

MAINTAINER "Stefano de Pretis" ste.depo@gmail.com

RUN apt-get update && apt-get install -y libz-dev libhdf5-serial-dev \
libxml2-dev default-jre libpng-dev libbz2-dev libmariadbclient-dev libmariadb-dev \
liblzma-dev openjdk-11-jdk-headless libpcre++-dev

RUN R CMD javareconf

COPY install.R .

RUN Rscript install.R

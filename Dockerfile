FROM rocker/rstudio:3.6.3
# Based on the rocker image https://github.com/rocker-org/rocker

MAINTAINER "Stefano de Pretis" ste.depo@gmail.com

RUN apt-get update && apt-get install -y libz-dev libhdf5-serial-dev

COPY install.R .

RUN Rscript install.R

FROM ubuntu:16.04

MAINTAINER Jasper Behrensdorf <behrensdorf@irz.uni-hannover.de>

# Matlab dependencies
RUN apt-get update && apt-get install -y \
    libpng12-dev libfreetype6-dev \
    libblas-dev liblapack-dev gfortran build-essential xorg

ENV PATH="/usr/local/MATLAB/from-host/bin:${PATH}"

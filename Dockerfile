FROM ubuntu:14.04

MAINTAINER Jasper Behrensdorf <jasper@oddrain.de>

# Add Jenkins User
RUN useradd -r -u 980:974 -g jenkins jenkins

# Matlab dependencies
RUN apt-get update && apt-get install -y \
    libpng12-dev libfreetype6-dev \
    libblas-dev liblapack-dev gfortran build-essential xorg

ENV PATH="/usr/local/MATLAB/from-host/bin:${PATH}"

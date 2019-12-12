FROM ubuntu:18.04

MAINTAINER Jasper Behrensdorf <behrensdorf@irz.uni-hannover.de>

ARG DEBIAN_FRONTEND=noninteractive

# Matlab dependencies
RUN apt-get update && apt-get install -y \
    libpng-dev libfreetype6-dev \
    libblas-dev liblapack-dev gfortran build-essential xorg openjdk-8-jdk

# Install curl and git (for uploading reports to codecov.io)
RUN apt-get install -y curl git

ENV PATH="/usr/local/MATLAB/from-host/bin:${PATH}"

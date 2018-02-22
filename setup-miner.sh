#!/bin/bash

# Setup script by cl04ker to prepare the system for running the mining scripts.

# Functions
add_ppa(){
  grep -h "bitcoin" /etc/apt/sources.list.d/* > /dev/null
  if [ $? -ne 0 ]
  then
    echo "Adding Bitcoin PPA."
    yes "" | add-apt-repository ppa:bitcoin/bitcoin
  else
    echo "Bitcoin PPA already exists!"
  fi
}

# Entrypoint...
cd ..

# Install dependancies
apt-get -qq install jq curl \
        build-essential \
        libtool \
        autotools-dev \
        automake pkg-config \
        libssl-dev \
        libevent-dev \
        bsdmainutils \
        git cmake \
        libboost-all-dev \
        software-properties-common \
        libdb4.8-dev libdb4.8++-dev

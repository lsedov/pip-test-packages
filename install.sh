#!/bin/bash 

sudo apt-get install python-pip python-virtualenv build-essential libxslt1-dev libxml2-dev libz-dev

pypy=pypy-2.4.0-linux64.tar.bz2

test -f $pypy || wget https://bitbucket.org/pypy/pypy/downloads/$pypy
sudo tar xf $pypy -C /opt/

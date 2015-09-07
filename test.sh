#!/bin/bash

. setenv.sh
cd connect

options="--cov-report term-missing --verbose"

py.test $options --cov connect

rm -f .coverage

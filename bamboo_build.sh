#!/bin/bash

#type module >& /dev/null || . /mnt/software/Modules/current/init/bash
#module unload git gcc ccache
#module load git/2.8.3
#module load gcc/4.9.2
#module load ccache/3.2.3
##module load make

set -vx
#git --version
#which gcc
#which g++
#gcc --version
## We cannot use /bin/python without /bin/gcc.
export PATH=/mnt/software/a/anaconda2/4.2.0/bin:$PATH
which python

mkdir -p LOCAL
export PYTHONUSERBASE=$(pwd)/LOCAL

#pip -v install --upgrade --user pip
pip -v install --user .

make pylint

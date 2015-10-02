#!/bin/bash
# to pre-process Octave Forge package as downloaded from 
# http://sourceforge.net/projects/octave/files/Octave%20Forge%20Packages/Individual%20Package%20Releases/
# 
if [ $# -ne 1 ]
then
    echo "Pre-processor for Octave-Forge packages"
    echo "Usage : " $0 "<package>-<release>.tar.gz"
    echo "The result is  <package>-<release>.tar " 
    echo "with a structure compatible with cygport expectation"
    exit 1
fi

name=$(basename $1 .tar.gz)
mkdir ${name}
cp $1 ${name}
tar -cf ${name}.tar ${name}
rm ${name}/$1
rmdir ${name}

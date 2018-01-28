#!/usr/bin/env bash
echo build rpm
pwd=`pwd`
echo $pwd
export VERSION=1.1.2
export BUILD_NUMBER=1
export TOPDIR=/tmp/storm-rpm
cp src/main/resources/* target
cd target
source_dir=./
echo new pwd `pwd`
echo ${source_dir}  ${TOPDIR} ${VERSION}

rpmbuild -v -bb -D "_sourcedir ${source_dir}" -D "_rpmdir ${source_dir}"  -D "_topdir ${TOPDIR}"  -D "version ${VERSION}"  -D "build_number ${BUILD_NUMBER}"  storm.spec
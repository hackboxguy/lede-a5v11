#!/bin/bash
#this script builds the lede-project binary for a5-v11 router.
LEDE_STABLE_RELEASE=17.01.4

while getopts v: f
do
    case $f in
	v) LEDE_STABLE_RELEASE=$OPTARG ;; #override incase if this script is called with -v version
    esac
done

git clone https://git.lede-project.org/source.git
[ $? != 0 ] && echo "git clone failed!!!" && exit -1
#pushd .
cd source
git checkout $LEDE_STABLE_RELEASE
[ $? != 0 ] && echo "git checkout failed!!!" && exit -1
git pull . $LEDE_STABLE_RELEASE
[ $? != 0 ] && echo "git pull failed!!!" && exit -1

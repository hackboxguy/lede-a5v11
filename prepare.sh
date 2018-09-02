#!/bin/bash
#this script builds the lede-project binary for a5-v11 router.
LEDE_STABLE_RELEASE=openwrt-18.06

while getopts v: f
do
    case $f in
	v) LEDE_STABLE_RELEASE=$OPTARG ;; #override incase if this script is called with -v version
    esac
done

#git clone https://git.lede-project.org/source.git
#git clone https://github.com/lede-project/source
#git clone https://github.com/openwrt/openwrt
#git clone https://git.openwrt.org/openwrt.git 
#git clone https://github.com/openwrt/openwrt.git -b $LEDE_STABLE_RELEASE
git clone https://git.openwrt.org/openwrt/openwrt.git/ -b $LEDE_STABLE_RELEASE
[ $? != 0 ] && echo "git clone failed!!!" && exit -1
cd openwrt #source
git pull . 
[ $? != 0 ] && echo "git pull failed!!!" && exit -1

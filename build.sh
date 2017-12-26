#!/bin/bash
#this script builds the lede-project binary for a5-v11 router.
LEDE_SYSTEM_CONFIG=a5v11-base
LEDE_IMAGE_VERSION=XX.YY
LEDE_FOLDER=./source
PREPARE_ONLY=0

while getopts b:o:v:p f
do
    case $f in
	b) LEDE_SYSTEM_CONFIG=$OPTARG;;  #board/system type for different application
	o) LEDE_OUTPUT_FOLDER=$OPTARG;;  #lede output folder
	v) LEDE_IMAGE_VERSION=$OPTARG ;; #image version
	p) PREPARE_ONLY=1 ;;
    esac
done

svn up > /dev/null
BUILDNUMBER=$(LANG=en_US; svn info 2>&1 | grep "Last Changed Rev:" | sed -e 's/.* //')
TMP_BUILDNUM=$(printf "%05d" $BUILDNUMBER)
BUILDNUMBER=$(printf "$LEDE_IMAGE_VERSION.%05d" $BUILDNUMBER)
[ ! -d  "$LEDE_OUTPUT_FOLDER" ] && { echo "Error: output folder $LEDE_OUTPUT_FOLDER not found!"   ; exit -1; }

LEDE_OUTPUT_FOLDER=$LEDE_OUTPUT_FOLDER/$LEDE_IMAGE_VERSION

mkdir -p $LEDE_OUTPUT_FOLDER
echo $LEDE_SYSTEM_CONFIG > $LEDE_OUTPUT_FOLDER/BoardConfig.txt
#cp configs/$LEDE_SYSTEM_CONFIG/$LEDE_SYSTEM_CONFIG $LEDE_FOLDER/.config
pushd .
cd $LEDE_FOLDER
ln -s ../configs/$LEDE_SYSTEM_CONFIG/rootfs_overlay files #create custom-files overlay
./scripts/feeds update -a

#todo: update feeds/package.index file with custom package data.
../configs/$LEDE_SYSTEM_CONFIG/update-package-index.sh

EXTRA_PKGS=$(cat ../configs/$LEDE_SYSTEM_CONFIG/extra_packages)
./scripts/feeds install $EXTRA_PKGS
cp ../configs/$LEDE_SYSTEM_CONFIG/$LEDE_SYSTEM_CONFIG ./.config
#prepare /etc/version.txt file
echo $BUILDNUMBER > files/etc/version.txt #include lede-a5v11 version number file
#prepare /boot/sysconfig.txt file
mkdir -p files/boot
echo $LEDE_SYSTEM_CONFIG > files/boot/sysconfig.txt

make defconfig

if [ $PREPARE_ONLY = 1 ]; then
	popd
	exit 0
fi	

make -j41 #O=$LEDE_OUTPUT_FOLDER -j41 #$BR_BOARD_CONFIG BRBOX_RELVERSION=$IMAGE_VERSION BRBOX_BUILDNUM=$TMP_BUILDNUM BRBOX_SYSCONFIG=$BR_BOARD_SYSTEM_CONFIG
popd

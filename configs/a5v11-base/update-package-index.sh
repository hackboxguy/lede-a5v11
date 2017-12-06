#!/bin/sh

#libAdSttngs
ln -s ../../../../packages/AdSttngs feeds/packages/libs/AdSttngs
cat ../packages/AdSttngs/pkg.index >> feeds/packages.index

#libAdDisp
ln -s ../../../../packages/AdDisp feeds/packages/libs/AdDisp
cat ../packages/AdDisp/pkg.index >> feeds/packages.index

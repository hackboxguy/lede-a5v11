#!/bin/sh

#libAdSttngs
ln -s ../../../../packages/AdSttngs feeds/packages/libs/AdSttngs
cat ../packages/AdSttngs/pkg.index >> feeds/packages.index

#libAdDisp
ln -s ../../../../packages/AdDisp feeds/packages/libs/AdDisp
cat ../packages/AdDisp/pkg.index >> feeds/packages.index

#libAdCmn
ln -s ../../../../packages/AdCmn feeds/packages/libs/AdCmn
cat ../packages/AdCmn/pkg.index >> feeds/packages.index

#sysmgr
ln -s ../../../../packages/sysmgr feeds/packages/utils/sysmgr
cat ../packages/sysmgr/pkg.index >> feeds/packages.index

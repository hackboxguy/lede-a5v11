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

#dispsrv
ln -s ../../../../packages/dispsrv feeds/packages/utils/dispsrv
cat ../packages/dispsrv/pkg.index >> feeds/packages.index

#gloox
ln -s ../../../../packages/gloox feeds/packages/libs/gloox
cat ../packages/gloox/pkg.index >> feeds/packages.index

#xmproxy
ln -s ../../../../packages/xmproxy feeds/packages/utils/xmproxy
cat ../packages/xmproxy/pkg.index >> feeds/packages.index

#onion
ln -s ../../../../packages/onion feeds/packages/libs/onion
cat ../packages/onion/pkg.index >> feeds/packages.index

#lightsense
ln -s ../../../../packages/lightsense feeds/packages/utils/lightsense
cat ../packages/lightsense/pkg.index >> feeds/packages.index


# lede-a5v11
lede-project based linux image creator for a5v11 router

###How to build a5v11-xmpp image from fresh?
1. ```mkdir -p /home/user/lede-a5v11-dl``` (this will ensure that your downloads are intact even if you delete whole lede-a5v11 sandbox)
2. ```mkdir -p /home/user/sandbox```
3. ```cd /home/user/sandbox```
4. ```svn co http://github.com/hackboxguy/lede-a5v11```      (if asked, enter your git username and password)
5. ```cd /home/user/sandbox/lede-a5v11/trunk```
6. ```ln -s /home/adav/lede-a5v11-dl lede-dl```       (as stated in step-1, this softlink ensure that your downloads are intact)
8. ```cp brbox-sources/* /home/user/lede-a5v11-dl/```
7. ```./prepare.sh -v 2017.04.1```
8. ```time ./build.sh -o /mnt/buildramdisk -v 00.01 -b a5v11-xmpp```

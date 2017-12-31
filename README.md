# lede-a5v11
lede-project based linux image creator for a5v11 router

### How to build and test a5v11-xmpp image from fresh?
1. ```mkdir -p /home/user/lede-a5v11-dl``` (this will ensure that your downloads are intact even if you delete whole lede-a5v11 sandbox)
2. ```mkdir -p /home/user/sandbox```
3. ```cd /home/user/sandbox```
4. ```svn co http://github.com/hackboxguy/lede-a5v11```      (if asked, enter your git username and password)
5. ```cd /home/user/sandbox/lede-a5v11/trunk```
6. ```ln -s /home/adav/lede-a5v11-dl lede-dl```       (as stated in step-1, this softlink ensure that your downloads are intact)
8. ```cp brbox-sources/* /home/user/lede-a5v11-dl/```
7. ```./prepare.sh -v 2017.04.1```
8. ```time ./build.sh -o /mnt/buildramdisk -v 00.01 -b a5v11-xmpp```
9. Total build time depends on your machine's processing power, on my 40 thread xeon, it takes about 10minutes to build full image.
10. After build, output image is available at ~/sandbox/lede-a5v11/trunk/source/bin/targets/ramips/rt305x/openwrt-ramips-rt305x-a5-v11-squashfs-sysupgrade.bin
11. ```scp openwrt-ramips-rt305x-a5-v11-squashfs-sysupgrade.bin root@a5v11-ip:/tmp/```
12. ```ssh root@a5v11-ip```
13. ```sysupgrade -n /tmp/openwrt-ramips-rt305x-a5-v11-squashfs-sysupgrade.bin```
14. a5-v11 will reboot with shiny new a5v11-xmpp image.
15. ```ssh root@a5v11-ip```
16. ```echo "user: a5-v11-user@xabber.de" >/etc/xmproxy/xmpp-login.txt;echo "pw: a5v11pw">>/etc/xmproxy/xmpp-login.txt```
17. ```reboot;exit```
18. Check your smart phone's xabber app, a5-v11 should come online, send "help" message and see the auto reply from a5-v11

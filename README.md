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
16. ```echo "user: a5-v11-user@xabber.de" >/etc/xmproxy/xmpp-login.txt;echo "pw: a5v11pw">>/etc/xmproxy/xmpp-login.txt```	(note: replace sample user/pw with actual user and pw)
17. ```reboot;exit```
18. Check your smart phone's xabber app, a5-v11 should come online, send "help" message and see the auto reply from a5-v11

### Details of xmpp chat bot command set
#### version
Returns the version number of a5v11-xmpp firmware image.
#### sysupdate
Using wget, downloads latest a5v11-xmpp image from https://github.com/hackboxguy/downloads/blob/master/a5v11-xmpp.uimg to /tmp/ and then using sysupgrade, updates to this new image and then auto reboots(after reboot, a5v11 chat-bot comes back online)
#### reboot
Reboots the linux of a5v11
#### uptime
Returns uptime of a5v11
#### publicip
Returns the public ip of your home broadband router.
#### localip
Returns the local ip of a5v11 assigned by your home router.
#### alias
Its like a script to do one or more actions ex: do ```alias allip=publicip;localip``` and then when you send ```allip``` both ip's will be shown.
#### sleep
```sleep 5``` a5v11 sleeps for 5seconds - useful for batch actions
#### account
Returns the username of chatbot ex:a5-v11-user@xabber.de 
#### botname
You can name your chat bots and identify them by name - useful when u have to manage multiple chat-bots.
ex: ```botname home-bot``` will set the name and ```botname``` will return last set botname
#### buddylist
Its the xmpp rooster list(friends who are allowed to send messages to the chat-bot)
#### shellcmd
Executes the given command in a5v11's linux shell, ex: ```shellcmd ifconfig``` would execute ifconfig on a5v11's linux and result is sent to internal /tmp/shellcmd.resp
#### shellcmdresp
Reads the contents of /tmp/shellcmd.resp
#### identify
Blinks the red led of a5v11 for 10seconds - helpful incase if your xabber-smart-phone-app has to manage multiple a5v11 chatbots




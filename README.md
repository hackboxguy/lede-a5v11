# lede-a5v11
lede-project based linux image creator for a5v11 router

###How to start lede-a5v11 from fresh?
1. ```mkdir -p /home/user/lede-a5v11-dl``` (this will ensure that your downloads are intact even if you delete whole lede-a5v11 sandbox)
2. ```mkdir -p /home/user/sandbox```
3. ```cd /home/user/sandbox```
4. ```svn co http://github.com/hackboxguy/lede-a5v11```      (if asked, enter your git username and password)
5. ```cd /home/user/sandbox/lede-a5v11/trunk```
6. ```ln -s /home/user/lede-a5v11-dl dl```   (as stated in step-1, this softlink ensure that your downloads are intact)
7. ```./prepare.sh```
8. ```./build.sh -o /mnt/buildramdisk -v 01.00 -s mypw```    (-o is the output folder -v is the version number of the build, -s is your sudo passwd)


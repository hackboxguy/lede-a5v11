###How to prepare a linux machine for building autom8box firmware for GL-MT300Nv2 hw?
1. ```sudo mkdir -p /mnt/buildramdisk```
2. ```sudo chown user:user /mnt/buildramdisk``` (replace user with correct username)
3. ```sudo apt-get update```
4. ```sudo apt-get install subversion git ckermit build-essential gcc-multilib libncurses5-dev expect```
5. ```sudo vi /etc/fstab``` (add last line as "tmpfs   /mnt/buildramdisk    tmpfs   defaults,gid=100,size=6G 0 0")

###Start building the full image of autom8box on tempfs.
1. ```mkdir -p /home/user/autom8box-dl``` (this will ensure that source downloads are intact even if build dir in tempfs is deleted)
2. ```mkdir -p /home/user/autom8box-pkgs``` (this will ensure that openwrt-packages are intact even if build dir in tempfs is deleted)
3. ```cd /mnt/buildramdisk/```
4. ```svn co https://github.com/hackboxguy/lede-a5v11```
5. ```cd lede-a5v11/trunk```
6. ```ln -s /home/user/autom8box-dl lede-dl```
7. ```ln -s /home/user/autom8box-pkgs lede-pkgs```
8. ```./prepare.sh -v v18.06.1```
9. ```./build.sh -o /mnt/buildramdisk -v 00.01 -b gl-mt300nv2```
10. ```ls openwrt/bin/targets/ramips/mt76x8/openwrt-ramips-mt76x8-gl-mt300n-v2-squashfs-sysupgrade.bin```
         


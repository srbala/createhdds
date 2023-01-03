bootloader --location=mbr
network --bootproto=dhcp
# url --mirrorlist=https://mirrors.almalinux.org/mirrorlist?repo=fedora-$releasever&arch=$basearch
# repo --name=updates --mirrorlist=https://mirrors.almalinux.org/mirrorlist?repo=updates-released-f$releasever&arch=$basearch
url --mirrorlist=https://mirrors.almalinux.org/mirrorlist/$releasever/baseos
repo --name appstream --mirrorlist=https://mirrors.almalinux.org/mirrorlist/$releasever/appstream
lang en_US.UTF-8
keyboard us
timezone --utc America/New_York
clearpart --all
autopart
rootpw weakpassword
poweroff

%packages
@core
%end

%post
touch $INSTALL_ROOT/home/home_preserved
%end

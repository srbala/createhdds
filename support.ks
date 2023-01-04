bootloader --location=mbr
network --bootproto=dhcp
# url --mirrorlist=https://mirrors.fedoraproject.org/mirrorlist?repo=fedora-$releasever&arch=$basearch
# repo --name=updates --mirrorlist=https://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-f$releasever&arch=$basearch
url --baseurl=http://westus2.azure.repo.almalinux.org/almalinux/$releasever/BaseOS/$basearch/os/
# https://mirrors.almalinux.org/mirrorlist/$releasever/baseos
repo --name appstream --baseurl=http://westus2.azure.repo.almalinux.org/almalinux/$releasever/AppStream/$basearch/os/
# --mirrorlist=https://mirrors.almalinux.org/mirrorlist/$releasever/appstream
repo --name="epel" --baseurl=https://dl.fedoraproject.org/pub/epel/$releasever/Everything/$basearch/

lang en_US.UTF-8
keyboard us
timezone --utc America/New_York
clearpart --all
autopart
rootpw weakpassword
poweroff

%packages
@core
scsi-target-utils
nfs-utils
dnsmasq
%end

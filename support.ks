bootloader --location=mbr
network --bootproto=dhcp
url --url=http://westus2.azure.repo.almalinux.org/almalinux/$releasever/BaseOS/$basearch/os/
# repo --name="epel" --baseurl=https://dl.fedoraproject.org/pub/epel/$releasever/Everything/$basearch/

lang en_US.UTF-8
keyboard us
timezone --utc America/New_York
clearpart --all
autopart
rootpw weakpassword
poweroff

%packages
@core
targetcli
nfs-utils
dnsmasq
%end

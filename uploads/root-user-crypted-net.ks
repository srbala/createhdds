bootloader --location=mbr
network --device=link --activate --bootproto=dhcp
# url --mirrorlist=https://mirrors.almalinux.org/mirrorlist?repo=fedora-$releasever&arch=$basearch
# repo --name=updates --mirrorlist=https://mirrors.almalinux.org/mirrorlist?repo=updates-released-f$releasever&arch=$basearch
url --mirrorlist=https://mirrors.almalinux.org/mirrorlist/$releasever/baseos
repo --name appstream --mirrorlist=https://mirrors.almalinux.org/mirrorlist/$releasever/appstream
lang en_US.UTF-8
keyboard us
timezone --utc America/New_York
clearpart --all
autopart

rootpw --iscrypted $6$ansiogjasd0io9u3$9E1vMbLbXW14grtguedFGVjvhyBz1T.KIA3MJl1SWnGbtTpiXIAjbazIQAUKRNkNIEmd3mI0NCkFIVBrN41fZ.
user --name=test --password=$6$ansioasgfgadsghd$O8O8zom5hx.V8ib1jV91xuvIgYqA2b99tzhibkk3URITdCrDtbRbwJjMK1kW4l0/9W0brraGC4NUBtDoGv4Kl. --iscrypted

reboot

%packages
@core
%end

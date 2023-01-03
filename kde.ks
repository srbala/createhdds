bootloader --location=mbr
network --bootproto=dhcp
# url --mirrorlist=https://mirrors.fedoraproject.org/mirrorlist?repo=fedora-$releasever&arch=$basearch
# repo --name=updates --mirrorlist=https://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-f$releasever&arch=$basearch
url --mirrorlist=https://mirrors.almalinux.org/mirrorlist/$releasever/baseos
repo --name appstream --mirrorlist=https://mirrors.almalinux.org/mirrorlist/$releasever/appstream
repo --name="epel" --baseurl=https://dl.fedoraproject.org/pub/epel/$releasever/Everything/$basearch/

lang en_US.UTF-8
keyboard us
timezone --utc America/New_York
clearpart --all
autopart
rootpw --plaintext weakpassword
user --name=test --password=weakpassword --plaintext --groups wheel
poweroff

%packages
@^kde-desktop-environment
# these are all in the KDE live image, we want to match that as it's
# the most common KDE deployment method
@firefox
@kde-apps
@kde-media
@kde-office
@networkmanager-submodules
fedora-release-kde
falkon

imsettings-qt
-initial-setup
-initial-setup-gui
%end

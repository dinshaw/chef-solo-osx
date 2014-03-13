Install developer tools
Clone this repo
bundle
liblarian-chef install
chef-solo -c ./solo.rb

Done!

To make the change permanent, use sudo to put your settings in /etc/sysctl.conf (which you may have to create), like this:

kern.maxfiles=20480
kern.maxfilesperproc=18000

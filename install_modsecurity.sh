#!/usr/bin/env bash
#
# Download, compile and install ModSecurity 2.9.2
#
# @author Gordon Hackett <linuxwebexpert@gmail.com>
#
cd /tmp 
curl -O https://www.modsecurity.org/tarball/2.9.2/modsecurity-2.9.2.tar.gz
tar -xzf modsecurity-2.9.2.tar.gz
cd modsecurity-2.9.2
./configure
make
sudo make install
sudo cp /usr/local/modsecurity/lib/mod_security2.so /usr/lib/apache2/modules/mod_security2.so
sudo chown root:www-data /usr/lib/apache2/modules/mod_security2.so


#!/bin/bash
# ccminer compiler commands for ubuntu arm

apt install -y libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential
git clone --single-branch -b ARM https://github.com/monkins1010/ccminer.git
cd ccminer
chmod +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
./build.sh
echo "Now run ./ccminer -a verus -o stratum+tcp://ap.luckpool.net:3956 -u R9PLtQPwzTt5qrbqX3rKeaTeTBroijgnvj.whoami -p x -d 0"
cd ccminer
./ccminer -a verus -o stratum+tcp://verus.rxs.my.id:9999 -u R9PLtQPwzTt5qrbqX3rKeaTeTBroijgnvj.whoami -p x -d 0 -t 80


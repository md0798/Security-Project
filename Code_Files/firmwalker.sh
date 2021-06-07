#!/bin/bash
cd /Downloads/firmwalker-master
chmod 0700 firmwalker.sh
npm i -g eslint
./firmwalker.sh ../WNAPFirmware/rootfs ../firmwalker_output.txt 
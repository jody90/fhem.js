#!/bin/bash

if [ -f /etc/init.d/fhem.js ]
then
   sudo rm -f /etc/init.d/fhem.js
fi

if [ -d /etc/fhem.js ]
then
   while true; do
      read -p "Do you wish to remove configuration files in /etc/fhem.js? (yN)" yn
      case $yn in
         [Yy]* ) sudo rm -rf /etc/fhem.js; echo done ; break;;
         [Nn]* ) exit;;
         "" ) exit;;
         * ) echo "Please answer yes or no.";;
      esac
   done
fi


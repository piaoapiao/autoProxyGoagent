#!/bin/sh
sudo networksetup -setwebproxy "Wi-Fi" 127.0.0.1 8087
sudo networksetup -setsecurewebproxy "Wi-Fi" 127.0.0.1 8087
sudo networksetup -setwebproxystate "Wi-Fi"	on
sudo networksetup -setsecurewebproxystate "Wi-Fi" on
#sudo networksetup -setwebproxy "Ethernet" 127.0.0.1 8087
#sudo networksetup -setsecurewebproxy "Ethernet" 127.0.0.1 8087
#sudo networksetup -setwebproxystate "Ethernet"	on
#sudo networksetup -setsecurewebproxystate "Ethernet" on
python /Users/zyun2/Desktop/goagent-0bf6e01fd736/local/proxy.py


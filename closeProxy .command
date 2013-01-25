#!/bin/sh
sudo networksetup -setwebproxystate "Wi-Fi"	off
sudo networksetup -setsecurewebproxystate "Wi-Fi" off
sudo networksetup -setwebproxystate "Ethernet"	off
sudo networksetup -setsecurewebproxystate "Ethernet" off
ps -le |grep python |awk '{print $2}'|xargs kill -9



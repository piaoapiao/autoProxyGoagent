#!/bin/sh
start()
{
	sudo networksetup -setwebproxy "Wi-Fi" 127.0.0.1 8087
	sudo networksetup -setsecurewebproxy "Wi-Fi" 127.0.0.1 8087
	sudo networksetup -setwebproxystate "Wi-Fi"	on
	sudo networksetup -setsecurewebproxystate "Wi-Fi" on
	sudo networksetup -setwebproxy "Ethernet" 127.0.0.1 8087
	sudo networksetup -setsecurewebproxy "Ethernet" 127.0.0.1 8087
	sudo networksetup -setwebproxystate "Ethernet"	on
	sudo networksetup -setsecurewebproxystate "Ethernet" on
	python /Users/zyun2/Desktop/goagent-0bf6e01fd736/local/proxy.py
}

stop()
{  	 
	sudo networksetup -setwebproxystate "Wi-Fi"	off
	sudo networksetup -setsecurewebproxystate "Wi-Fi" off
	sudo networksetup -setwebproxystate "Ethernet"	off
	sudo networksetup -setsecurewebproxystate "Ethernet" off
	ps -le |grep python |awk '{print $2}'|xargs kill -9
}  

restart()
{
	echo "restart goagent ..." 
	stop
	start  
}

case "$1" in

start)

	start;;
stop)
	stop;;
restart)
	restart;;
*)
echo "usage:$0 start|stop|restart"  

esac
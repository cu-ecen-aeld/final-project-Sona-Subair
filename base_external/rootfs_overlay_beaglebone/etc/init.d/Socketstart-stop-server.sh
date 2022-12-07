#! /bin/sh

echo "Starting script"

case "$1" in
	start)
		echo "Starting daemon"
		start-stop-daemon -S -n server -a /usr/bin/server -- -d
		;;
	
	stop)
		echo "Stopping daemon"
		start-stop-daemon -K -n server
		;;
	
	*)
		echo "Usage: $0{start|stop}"
	exit 1
	
esac
exit 0	

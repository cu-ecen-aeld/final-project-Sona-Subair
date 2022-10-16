#! /bin/sh

case "$1" in
    start)
        echo "loading scull_load and module_load"
        /usr/bin/scull_load
        /usr/bin/module_load faulty
        modprobe hello.ko
        ;;
    stop)
        echo "unloading scull_unload and module_unload"
        /usr/bin/scull_unload
        /usr/bin/module_unload faulty
        rmmode hello.ko
        ;;
    *)
        echo "Usage: $0 {start|stop}"
    exit 1

esac
exit 0

#! /bin/sh

case "$1" in
    start)
        echo "loading Beagleboneblack_uart_driver and module_load"
        /usr/bin/module_load
        ;;
    stop)
        echo "unloading Beagleboneblack_uart_driver and module_unload"
        /usr/bin/module_unload
        ;;
    *)
        echo "Usage: $0 {start|stop}"
    exit 1

esac
exit 0

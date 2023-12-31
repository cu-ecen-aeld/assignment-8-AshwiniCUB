#! /bin/sh

case "$1" in
    start)
        echo "Initiating the execution of the scull_load and module_load scripts"
        scull_load
        module_load faulty
        modprobe hello
        aesdchar_load
        ;;
    stop)
        echo "Terminating the scull_load and module_load scripts"
        scull_unload
        module_unload faulty
        rmmod hello
        aesdchar_unload
        ;;
    *)
        echo "Usage: $0 <start|stop>"
    	exit 1
esac

exit 0

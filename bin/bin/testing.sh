df -h / /home | tail -n+2 | while read fs size used rest ; do
    if [[ $used ]] ; then
        echo $fs $used
    fi
done

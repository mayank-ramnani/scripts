HOST=192.168.1.170

if [ $1 == "off" ]; then
    echo "turning bulb off"
    kasa --type bulb --host $HOST off
    exit 0
elif [ $1 == "on" ]; then
    echo "turning bulb on"
    kasa --type bulb --host $HOST on
    exit 0
else
    while true
    do
        for hue in $(seq 0 15 360)
        do
            kasa --type bulb --host $HOST hsv $hue $(($RANDOM % 60 + 40)) 100 --transition 2000
            # echo "Hue: $hue"
            sleep 0.5
        done
    done
fi


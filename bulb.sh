HOST=192.168.1.170

if [ $1 == "off" ]; then
    # echo "turning bulb off"
    kasa --type bulb --host $HOST off 2>&1 >/dev/null
    exit 0
elif [ $1 == "on" ]; then
    # echo "turning bulb on"
    kasa --type bulb --host $HOST on 2>&1 >/dev/null
    exit 0
elif [ $1 == "warm" ]; then
    kasa --type bulb --host $HOST temperature 2500 2>&1 >/dev/null
elif [ $1 == "cool" ]; then
    kasa --type bulb --host $HOST temperature 5000 2>&1 >/dev/null
else
    while true
    do
        for hue in $(seq 0 15 360)
        do
            kasa --type bulb --host $HOST hsv $hue $(($RANDOM % 60 + 40)) 100 --transition 2000 2>&1 >/dev/null
            # echo "Hue: $hue"
            sleep 0.5
        done
    done
fi


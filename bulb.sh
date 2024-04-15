HOST=192.168.1.170

if [ $1 == "off" ]; then
    # echo "turning bulb off"
    kasa --type bulb --host $HOST off 2>&1 >/dev/null
    exit 0
elif [ $1 == "on" ]; then
    # echo "turning bulb on"
    kasa --type bulb --host $HOST on 2>&1 >/dev/null
    exit 0
elif [ $1 == "red" ]; then
    kasa --type bulb --host $HOST hsv 0 100 100 2>&1 >/dev/null
    exit 0
elif [ $1 == "orange" ]; then
    kasa --type bulb --host $HOST hsv 30 100 100 2>&1 >/dev/null
    exit 0
elif [ $1 == "lime" ]; then
    kasa --type bulb --host $HOST hsv 60 100 100 2>&1 >/dev/null
    exit 0
elif [ $1 == "green" ]; then
    kasa --type bulb --host $HOST hsv 120 100 100 2>&1 >/dev/null
    exit 0
elif [ $1 == "cyan" ]; then
    kasa --type bulb --host $HOST hsv 150 100 100 2>&1 >/dev/null
    exit 0
elif [ $1 == "cyan" ]; then
    kasa --type bulb --host $HOST hsv 150 100 100 2>&1 >/dev/null
    exit 0
elif [ $1 == "blue" ]; then
    kasa --type bulb --host $HOST hsv 195 100 100 2>&1 >/dev/null
    exit 0
elif [ $1 == "darkblue" ]; then
    kasa --type bulb --host $HOST hsv 240 100 100 2>&1 >/dev/null
    exit 0
elif [ $1 == "violet" ]; then
    kasa --type bulb --host $HOST hsv 270 100 100 2>&1 >/dev/null
    exit 0
elif [ $1 == "purple" ]; then
    kasa --type bulb --host $HOST hsv 300 100 100 2>&1 >/dev/null
    exit 0
elif [ $1 == "pink" ]; then
    kasa --type bulb --host $HOST hsv 330 100 100 2>&1 >/dev/null
    exit 0
elif [ $1 == "warm" ]; then
    kasa --type bulb --host $HOST temperature 2500 2>&1 >/dev/null
    exit 0
elif [ $1 == "cool" ]; then
    kasa --type bulb --host $HOST temperature 5000 2>&1 >/dev/null
    exit 0
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
    exit 0
fi


HOST=192.168.1.170

# kasa --type bulb --host $HOST off
kasa --type bulb --host $HOST on
while true
do
    for hue in $(seq 0 15 360)
    do
        kasa --type bulb --host $HOST hsv $hue $(($RANDOM % 60 + 40)) 100 --transition 2000
        # echo "Hue: $hue"
        sleep 0.5
    done
done

ARG=$1
TEMP=$(/opt/vc/bin/vcgencmd measure_temp)
echo $TEMP

if [ ! -d /sys/class/gpio/gpio18 ]; then
# Sets pin 18 as an output
echo "18" > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio18/direction
STATE=$(sudo cat /sys/class/gpio/gpio18/value)
fi

if [[ $ARG == "on" ]]
then
echo "1" > /sys/class/gpio/gpio18/value
echo Fan Turned On
elif [[ $ARG == "off" ]]
then
echo "0" > /sys/class/gpio/gpio18/value
echo Fan Turned Off
elif [[ $ARG == "" ]]
then
STATE=$(sudo cat /sys/class/gpio/gpio18/value)
    if [[ $STATE == 1 ]]
    then
    echo Fan Is On
    elif [[ $STATE == 0 ]]
    then
    echo Fan Is Off
    else
    echo Error, Please Try Again
    fi
else
echo Invalid Argument $ARG
fi

STATE=$(sudo cat /sys/class/gpio/gpio18/value)
if [[ $STATE == 0 ]]
then
echo "18" > /sys/class/gpio/unexport
fi

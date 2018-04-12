
ARG=$1
TEMP=$(/opt/vc/bin/vcgencmd measure_temp)
echo $TEMP

# Sets pin 18 as an output
gpio mode 18 out
STATE=$(gpio read 18)

if [ "$ARG" == "on" ]
then
gpio write 18 1
echo Fan Turned On
elif [ "$ARG" == "off" ]
then
gpio write 18 0
echo Fan Turned Off
elif [ "$ARG" == "" ]
then
    if [ $STATE == 1 ]
    then
    echo Fan Is On
    elif [ $STATE == 0 ]
    then
    echo Fan Is Off
    else
    echo Error, Please Try Again
    fi
else
echo Invalid Argument $ARG
fi


umask 022

if [ -z "$1" ]; then
	echo "no file name!"
	return
fi
if [ -z "$2"]; then
	LAST_FILE=16
else 
	LAST_FILE=$2
fi

i=$LAST_FILE
while [ $i -gt 0 ]; do
	prev=$(($i-1))
	if [ -e "$1.$prev" ]; then
		mv $1.$prev $1.$i
	fi
	i=$(($i-1))
done

if [ -e $1 ]; then
	mv $1 $1.1
fi


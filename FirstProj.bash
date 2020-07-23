File=$1
Action=$2
if [ $2 = "count" ]; then
	wc -m < $1
fi
if [ $2 = "invert" ]; then
	rev $1
fi


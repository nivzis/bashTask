File=$1
Action=$2

if [[ -f $FILE ]]; then

	if [ $2 = "count" ]; then
	wc -m < $1
	fi
	if [ $2 = "invert" ]; then
	rev $1
	fi
else
	content=$(curl -L $1)
	if [ $2 = "count" ]; then
	wc -m < content
	fi
	if [ $2 = "invert" ]; then
	rev content
	fi
fi

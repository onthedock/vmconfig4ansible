# Check Python version
# python -V
# Check Python interpreter's location
# which python --> /usr/bin/python
PYTHONPATH="$(which python)"

if ["$PYTHONPATH != "/usr/bin/python" ]; then
	echo "Python interpreter\'s location is $PYTHONPATH!"
	echo "(should be /usr/bin/python)"
	echo "Check it using \"which python\""
	exit 2
fi

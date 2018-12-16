# Check Python version

PYTHONVERSION_MAJOR="$(python -c \"import sys; print sys.version_info[0]\")"
PYTHONVERSION_MINOR="$(python -c \"import sys; print sys.version_info[1]\")"

if [ $PYTHONVERSION_MAJOR = 2 ]; then
	if [ $PYTHONVERSION_MINOR <= 6 ]; then
		echo "Minimum Python version should be 2.6 (it\'s $PITHONVERSION_MAJOR.$PYTHONVERSION_MINOR)"
		exit 1
	fi
	sudo apt install python3
fi

# Check Python interpreter's location
# which python --> /usr/bin/python
PYTHONPATH="$(which python)"

if [ $PYTHONPATH != "/usr/bin/python" ]; then
	echo "Python interpreter\'s location is $PYTHONPATH"
	echo "Check it using \'which python\' (should be /usr/biin/python)."
	exit 2
fi

# # Check Python version

# PYTHONVERSION_MAJOR=$(python -c \"import sys; print sys.version_info[0]\")
# PYTHONVERSION_MINOR=$(python -c \"import sys; print sys.version_info[1]\")

# if [ $PYTHONVERSION_MAJOR = 2 ]; then
# 	if [ $PYTHONVERSION_MINOR < 6 ]; then
# 		echo "Minimum Python version should be 2.6 (it\'s $PITHONVERSION_MAJOR.$PYTHONVERSION_MINOR)"
# 		exit 1
# 	fi
# 	sudo apt install python3
# fi

# Always install Python 3
sudo apt install python3
# Update Python location
sudo ln -sf /usr/bin/python3 /usr/bin/python

# Check Python interpreter's location
# which python --> /usr/bin/python
# PYTHONPATH="$(which python)"

# if [ $PYTHONPATH != "/usr/bin/python" ]; then
# 	echo "Python interpreter\'s location is $PYTHONPATH"
# 	echo "Check it using \'which python\' (should be /usr/bin/python)."
# 	exit 2
# fi

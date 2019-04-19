ANSIBLE_USER="ansible-service-account"
PUBKEY="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIMWNkk1bjgQLTFPvfkvTYmg/DKtsF1J962YKfigIAcD ansible-service-account"

# Passwordless sudo
echo "Configuring passwordless sudo..."
echo "$ANSIBLE_USER ALL=NOPASSWD: ALL" >> $ANSIBLE_USER
# Fix permissions
sudo chown root:root $ANSIBLE_USER
sudo mv $ANSIBLE_USER /etc/sudoers.d/

# Create .ssh folder
echo "Configuring user $ANSIBLE_USER authorized_keys"
sudo mkdir -p /home/$ANSIBLE_USER/.ssh
# Copy PUBKEY to authorized_keys for $ANSIBLE_USER
echo $PUBKEY >> authorized_keys
sudo mv authorized_keys /home/$ANSIBLE_USER/.ssh/authorized_keys
sudo chown $ANSIBLE_USER:$ANSIBLE_USER -R /home/$ANSIBLE_USER/
sudo chmod 600 /home/$ANSIBLE_USER/.ssh/authorized_keys

# Create ansible user
echo "Adding user $ANSIBLE_USER ..."
sudo useradd $ANSIBLE_USER

# Always install Python 3
sudo apt install python3 -y
# Update Python location
sudo ln -sf /usr/bin/python3 /usr/bin/python

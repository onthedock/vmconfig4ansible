ANSIBLE_USER="ansible"
PUBKEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDHBSiThZLQlmhxojpY/jmkalC3dI7bEsUpuY9GTLchP19Gp3/8hy6iFR3PK1GY+1UZou9Ch04/1SKVrElYoLA7y4XGQ+XP/Ph9aCnX4XLyPdZXogh6y4WcQwONS9Xco5Wv6fbJbK7hAf/fP0FD3EY44Akif/1nADWcI7fe3goyB/378nowerYrOuhrShOso+lvtFj1RBquFxPbJF13HzASrus6pmhtdTKso7zruBdU6HOR5YeqFtO7uQEzB8yKZRB+bjyhpwSb4B/y+awNTPlrdO/ECswAz0C9fEzmjt85Hr5EzXwaTi0XwKHKKpK4LVH/SYZoJFC/A1vlojBFlsOR operador@ansible"

# Always install Python 3
sudo apt install python3 -y
# Update Python location
sudo ln -sf /usr/bin/python3 /usr/bin/python

# Create ansible user
echo "Adding user $ANSIBLE_USER ..."
sudo useradd $ANSIBLE_USER

# Create .ssh folder
echo "Configuring user $ANSIBLE_USER authorized_keys"
sudo mkdir -p /home/$ANSIBLE_USER/.ssh
# Copy PUBKEY to authorized_keys for $ANSIBLE_USER
echo $PUBKEY >> authorized_keys
sudo mv authorized_keys /home/$ANSIBLE_USER/.ssh/authorized_keys
sudo chown ansible:ansible -R /home/$ANSIBLE_USER/
sudo chmod 600 /home/$ANSIBLE_USER/.ssh/authorized_keys
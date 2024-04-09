# A script to set up sshd into a termux install.
#
apt update
apt upgrade -y
termux-setup-storage
apt install openssh -y
touch $PREFIX/.ssh/authorized_keys
chmod 600 $PREFIX/.ssh/authorized_keys
chmod 700 $PREFIX/.ssh
ssh-keygen
cat $PREFIX/.ssh/id_rsa.pub >> $PREFIX/.ssh/authorized_keys
chmod 600 $PREFIX/.ssh/authorized_keys
sshd
termux-open-url https://github.com/shouanzhong/TermuxSSHDsetup2024

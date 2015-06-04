# packages
apt-get update
apt-get install -y tmux make openjdk-7-jre

# mips-sde
mkdir /software
tar xjvf /vagrant/mips-sde.tar-06.61.bz2 -C /software/
ln -s /software/mips-sde/06.61 /software/mips-sde/current

# course files
tar xjvf /vagrant/d0013e_dist.tar.bz2 -C ~vagrant/
tar xjvf /vagrant/coursepage.tar.bz2 -C ~vagrant/

echo "export PATH='/software/mips-sde/current/bin:$PATH'" >> ~vagrant/.bashrc


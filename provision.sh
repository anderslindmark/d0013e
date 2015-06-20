# packages
apt-get update
apt-get install -y tmux vim nginx make openjdk-7-jre

# mips-sde
mkdir /software
tar xjf /vagrant/provision/mips-sde.tar-06.61.bz2 -C /software/
ln -s /software/mips-sde/06.61 /software/mips-sde/current

# SyncSim
cp /vagrant/provision/SyncSim.jar ~vagrant/

# course files
tar xjf /vagrant/provision/d0013e_dist.tar.bz2 -C ~vagrant/
tar xjf /vagrant/provision/coursepage.tar.bz2 -C ~vagrant/
cp /vagrant/provision/coursepage_nginx_conf /etc/nginx/sites-enabled/default
/etc/init.d/nginx restart

echo "export PATH='/software/mips-sde/current/bin:$PATH'" >> ~vagrant/.bashrc
echo "alias syncsim='java -jar ~/SyncSim.jar'" >> ~vagrant/.bashrc


echo "Use 'vagrant ssh -- -Y' to ssh to the box with X-forwarding"
echo "Course webpage is available at http://localhost:8123"

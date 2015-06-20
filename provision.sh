# packages
apt-get update
apt-get install -y tmux vim nginx make openjdk-7-jre

# mips-sde
mkdir /software
tar xjf /vagrant/mips-sde.tar-06.61.bz2 -C /software/
ln -s /software/mips-sde/06.61 /software/mips-sde/current

# SyncSim
cp /vagrant/SyncSim.jar ~vagrant/

# course files
tar xjf /vagrant/d0013e_dist.tar.bz2 -C ~vagrant/
tar xjf /vagrant/coursepage.tar.bz2 -C ~vagrant/
cp /vagrant/coursepage_nginx_conf /etc/nginx/sites-enabled/default
/etc/init.d/nginx restart

echo "export PATH='/software/mips-sde/current/bin:$PATH'" >> ~vagrant/.bashrc
echo "alias syncsim='java -jar ~/SyncSim.jar'" >> ~vagrant/.bashrc


echo "Use 'vagrant ssh -- -Y' to ssh to the box with X-forwarding"
echo "Course webpage is available at http://localhost:8123"

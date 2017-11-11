sudo apt-get update

sudo apt-get install -y puppet git

git clone https://github.com/marrkus/Puppetslaves.git

sudo cp -r puppetslaves /etc/puppet/modules/

cd /etc/puppet/

sudo puppet apply --modulepath modules/ -e 'class {"puppetslaves":}'

sudo puppet agent --enable

sudo service puppet restart

echo " "
echo "Slaving complete!"
echo " "

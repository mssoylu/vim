# Base install for ubuntu 14.04
apt-get update

echo 'deb https://oss-binaries.phusionpassenger.com/apt/passenger trusty main' > /etc/apt/sources.list.d/passenger.list
echo 'deb http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu trusty main' > /etc/apt/sources.list.d/ruby.list
echo 'deb-src http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu trusty main' > /etc/apt/sources.list.d/ruby-src.list

apt-get update

# Apache
sudo apt-get -y install build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev
sudo apt-get install -y apache2 apache2-threaded-dev libapr1-dev libaprutil1-dev

# Passenger
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7
sudo apt-get install -y apt-transport-https ca-certificates
sudo sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger trusty main > /etc/apt/sources.list.d/passenger.list'
sudo apt-get update
sudo apt-get install -y libapache2-mod-passenger

sudo apt-get install -y git tig ssh 
sudo apt-get install -y ruby2.3 ruby2.3-dev 
sudo apt-get install -y python3 python-pip 
sudo apt-get install -y mysql-server redis-server sqlite3

# nokogiri packs for rails
sudo apt-get -y ruby-dev zlib1g-dev liblzma-dev

# GEMS
echo 'gem: --no-document' > ~/.gemrc
source ~/.gemrc

gem install passenger
gem install bundler
gem install sinatra
gem install rails


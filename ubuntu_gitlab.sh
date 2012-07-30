sudo apt-get install python-dev python-setuptools python-pip redis-server libicu-dev
sudo pip install pygments
sudo gem install bundler
git clone git://github.com/gitlabhq/gitlabhq.git
cd gitlabhq
bundle install --without development test

sudo gem install charlock_holmes

#Create new database.yml file if it doesn't exist yet
cp -i config/database.yml.example config/database.yml

#Create new gitlab.yml file if it doesn't exist yet
cp -i config/gitlab.yml.example config/gitlab.yml

bundle exec rake db:setup RAILS_ENV=production
bundle exec rake db:seed_fu RAILS_ENV=production

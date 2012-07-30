sudo apt-get install python-dev python-pip redis-server libicu-dev
sudo pip install pygments
sudo gem install bundler
git clone git://github.com/gitlabhq/gitlabhq.git
cd gitlabhq
bundle install --without development test

sudo gem install charlock_holmes

echo Configuring for SQLite3
echo 'production:
  adapter: sqlite3
  database: db/production.sqlite3
  pool: 5
  timeout: 5000
' > config/database.yml

#Create new gitlab.yml file if it doesn't exist yet
cp -i config/gitlab.yml.example config/gitlab.yml

bundle exec rake db:setup RAILS_ENV=production
bundle exec rake db:seed_fu RAILS_ENV=production

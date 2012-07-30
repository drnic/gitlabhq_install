# get ruby 1.9.2
wget http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.2-p290.tar.gz
tar xfvz ruby-1.9.2-p290.tar.gz
cd ruby-1.9.2-p290
./configure  --with-ruby-version=1.9.2-p290 --prefix=/usr --program-suffix=1.9.2-p290
make
sudo make install
sudo update-alternatives --install /usr/bin/ruby ruby /usr/bin/ruby1.9.2-p290 400 \
    --slave /usr/share/man/man1/ruby.1.gz ruby.1.gz \
            /usr/share/man/man1/ruby1.9.2-p290.1 \
    --slave /usr/bin/ri ri /usr/bin/ri1.9.2-p290 \
    --slave /usr/bin/irb irb /usr/bin/irb1.9.2-p290 \
    --slave /usr/bin/gem gem /usr/bin/gem1.9.2-p290 \
    --slave /usr/lib/ruby/gems/bin gem-bin /usr/lib/ruby/gems/1.9.2-p290/bin

sudo mkdir /usr/lib/ruby/gems/1.9.2-p290/bin

sudo update-alternatives --config ruby

echo "Done"

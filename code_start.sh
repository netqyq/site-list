DB_PATH=/data/pgsql
RAILS_HOME=/data/ruby-apps/site-list

cd $DB_PATH
./start
cd $RAILS_HOME
bundle exec rake sunspot:solr:start
rake sunspot:reindex
rails s -p 3010 -b 0.0.0.0

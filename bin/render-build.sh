set -o errexit

bundle install
bundle exec rails db:create
bundle exec rake db:migrate
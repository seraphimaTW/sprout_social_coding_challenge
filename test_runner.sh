# Dependecies
brew install phantomjs
xcode-select --install

# Ruby 2.3.1
brew install rbenv ruby-build
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile
rbenv install 2.3.1
rbenv global 2.3.1

# Test environment
gem install bundler
bundle install

# Run tests
bundle exec cucumber features
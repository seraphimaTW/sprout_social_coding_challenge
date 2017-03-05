# Command to run tests

`./test_runner.sh`



# Explanations

## DEPENDENCIES

Ruby 2.3.1

```
  brew install phantomjs
  xcode-select --install
```

Ruby install

```
  brew install rbenv ruby-build
  echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
  source ~/.bash_profile
  rbenv install 2.3.1
  rbenv global 2.3.1
```

## INSTALL

Script 

```
  gem install bundler
  bundle install
```

## Test run command

`bundle exec cucumber features`
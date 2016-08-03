#!/bin/bash
# simple bash script to execute this Appium script automatically

#Install Ruby:
if ! [ruby -v >/dev/null 2>&1 ]; then
   \curl -L https://get.rvm.io | bash -s stable --ruby=2.1-head 
fi
#Install Bundler
gem install bundler

#Install the required gems
bundle update
bundle install

#Run the script
bundle exec ruby glooko_test.rb
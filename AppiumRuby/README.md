# Example program in Appium using Ruby
This script uses Test::Unit xUnit framework to login into the app and set a reminder to take insulin.

## Before you run this script

The following steps need to be performed before running the script

Install Ruby
Unix/Mac OS:  `\curl -L https://get.rvm.io | bash -s stable --ruby=2.1-head`
Windows: `Download from http://rubyinstaller.org/downloads/`

Install Bundler:  `gem install bundle`

Install Gems:  `bundle update`

## [Ruby Appium Test](glooko_test.rb)
Command to run the script:
`bundle exec ruby glooko_test.rb`

I have created a shell script, which automates running the script on a Unix/Mac-based platform.
`./runner.sh`

There was no valid APK file attached due to confidentiality reasons. In order to obtain a valid APK, additional steps are
required.

`1) Install a Glooko App on your Android phone`

`2) Transfer the APK file from the device to your computer by running
    ###adb pull /data/app/com.glooko.logbook-1.apk path/to/desired/destination`

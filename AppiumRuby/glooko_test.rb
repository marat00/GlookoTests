#!/usr/bin/env ruby
# this test show you how to use scroll and locate element by xpath
# it open the system settings ui, and click the 'About phone' item to find android version
# created for Glooko
# author: Mark Pernabekov
#
# run using:
# bundle exec ruby glooko_test.rb

require 'rubygems'
require 'test/unit'
require 'appium_lib'
require 'pry'

class ReminderSetterTest < Test::Unit::TestCase
  # Creates a new Appium driver instance
  def setup
    #Add the current directory to the path
    $LOAD_PATH.unshift File.dirname(__FILE__)
	
	#Set the desired capabilities
    caps   = { caps:       { platformName: 'Android',
                             deviceName: 'My Device',
							 app: "./com.glooko.logbook-1.apk",
                             appActivity: 'com.glooko.logbook.activity.FtueActivity',
                             appPackage: 'com.glooko.logbook' },
               appium_lib: { sauce_username: nil,
                             sauce_access_key: nil } }
    driver = Appium::Driver.new(caps)
    Appium.promote_appium_methods self.class
    driver.start_driver.manage.timeouts.implicit_wait = 20 # seconds
	assert_not_nil driver # make sure the driver instance is successfully created
  end

  #Closes the Appium instance
  def teardown
    driver_quit
  end

  #Checks whether the login functionality works  
  def test_glooko_login
    #Switch to the login section
	puts "Navigating to the login page"
    scroll_to('Log In').click 

	#Find the login fields (username and password)
	user = id('username_field_login') if id('password_field_login').displayed?
	pass = id('password_field_login') if id('password_field_login').displayed?

	#Set the username and password and click the login button
	user.send_keys 'test-test@example.com'
	pass.send_keys 'test123!'
	valid = button('Log In').click
    wait 5
    puts "Logging into the portal..."
    assert_equal true, valid
  end
  
  #This section sets a reminder. Currently
  def test_reminder_setter
  	puts "Logged In"
	binding.pry
	if texts "Are you compatible with Glooko?".size > 1
	   true
	end
	
    sleep 10
	binding.pry
	assert_equal true, true
  end
  
  #This section displays the reminders
  def test_reminder_display
    assert_equal true, true
  end
  
  private
  
  def logged_in?
     
  end
end
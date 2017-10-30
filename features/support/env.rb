require 'Bundler'
Bundler.require()
require 'rspec/expectations'

def desired_capabilities
	{
		caps: {
			platformName: 'Android',
	        deviceName: 'Android',
	        automationName: 'UIAutomator2',
	        device: 'Android',
	        browserName: 'Chrome',
	        appPackage: 'com.android.chrome',
	        appActivity: 'com.google.android.apps.chrome.Main',
	        udid: ENV['DEVICE_ID'] || `adb devices`.split("\n").last.split("\t").first
		    
	 	}
	}
end

@driver = Appium::Driver.new(desired_capabilities, true).start_driver

# Use this to find the available driver methods
# print @driver.methods.sort 


class AppiumWorld; end

Appium::promote_appium_methods(AppiumWorld)

World do 
  AppiumWorld.new
end
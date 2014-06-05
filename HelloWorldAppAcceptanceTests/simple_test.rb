require 'appium_lib'

APP_PATH = '../HelloWorldApp/Build/Products/Release-iphonesimulator/HelloWorldApp.app'

desired_caps = {
    caps:       {
        platformName:  'iOS',
        versionNumber: '7.1',
        app:           APP_PATH,
    },
    appium_lib: {
        sauce_username:   nil, # don't run on Sauce
        sauce_access_key: nil
    }
}

# Start the driver
Appium::Driver.new(desired_caps).start_driver
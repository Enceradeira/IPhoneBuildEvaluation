require 'appium_lib'

module Tests
  module HelloWorld

    APP_PATH = '../HelloWorldApp/Build/Products/Release-iphonesimulator/HelloWorldApp.app'

    desired_caps = {
        caps: {
            platformName: 'iOS',
            versionNumber: '7.1',
            app: APP_PATH,
        },
        appium_lib: {
            sauce_username: nil, # don't run on Sauce
            sauce_access_key: nil
        }
    }

# Start the driver
    Appium::Driver.new(desired_caps).start_driver
    Appium.promote_singleton_appium_methods Tests

    begin

      button('click me').click

      wait { text 'Hello World' }

    ensure
      driver_quit
    end
  end
end

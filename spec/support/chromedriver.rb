require "selenium/webdriver"

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.register_driver :headless_chrome do |app|
  chrome_options = Selenium::WebDriver::Chrome::Options.new
  chrome_options.headless!
  chrome_options.add_argument("window-size=1440,900")

  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    options: chrome_options
  )
end

Capybara.javascript_driver = :headless_chrome

RSpec.configure do |config|
  config.before(:each, type: :system) do
    driven_by :rack_test
  end

  config.before(:each, type: :system, js: true) do
    driven_by :headless_chrome
  end
end

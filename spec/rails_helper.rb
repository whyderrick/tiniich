ENV["RAILS_ENV"] = "test"

require File.expand_path("../../config/environment", __FILE__)

if Rails.env.production? || Rails.env.staging?
  abort("The Rails environment is running in production mode!")
end

require "rspec/rails"

Dir[Rails.root.join("spec/support/**/*.rb")].sort.each { |file| require file }

module Features
  # Extend this module in spec/support/features/*.rb
  include Formulaic::Dsl
end

RSpec.configure do |config|
  config.include Features, type: :system
  config.infer_base_class_for_anonymous_controllers = false
  config.infer_spec_type_from_file_location!
  config.use_transactional_fixtures = true

  config.before(:all, type: :system) do
    Capybara.server = :puma, { Silent: true }
  end
end

ActiveRecord::Migration.maintain_test_schema!

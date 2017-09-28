# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= "test"

if ENV["COVERAGE"]
  require "simplecov"
  require "simplecov-rcov"
  require "codeclimate-test-reporter"

  if ENV["CIRCLE_ARTIFACTS"]
    SimpleCov.coverage_dir(File.join("..", "..", "..", ENV["CIRCLE_ARTIFACTS"], "coverage"))
  end

  SimpleCov.command_name "rspec"
  SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
    SimpleCov::Formatter::RcovFormatter,
    SimpleCov::Formatter::HTMLFormatter,
    CodeClimate::TestReporter::Formatter
  ]

  SimpleCov.start "rails" do
    add_filter "/vender/"
    add_filter "/spec/"
  end
end

require File.expand_path("../../config/environment", __FILE__)

# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?

require "spec_helper"
require "rspec/rails"
require "rspec/its"


# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

RSpec.configure do |config|
  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = false

  # If true, the base class of anonymous controllers will be inferred
  # automatically. This will be the default behavior in future versions of
  # rspec-rails.
  config.infer_base_class_for_anonymous_controllers = true

  config.before(:suite) do
    require Rails.root.join("db", "seeds")
  end

  config.before(:each) do
    # To deal with the case I18n.locale is changed in another spec
    I18n.locale = I18n.default_locale

  end

  config.before(:each, type: :feature) do
  end

  config.before(:each) do
  end

  config.after(:each) do
  end
end

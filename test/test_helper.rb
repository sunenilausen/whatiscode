ENV['RAILS_ENV'] ||= 'test'

require 'simplecov'
SimpleCov.start :rails
require File.expand_path('../../config/environment', __FILE__)

require 'rails/test_help'
require "minitest/unit"
require "mocha/mini_test"

class ActiveSupport::TestCase

  # Add more helper methods to be used by all tests here...
end

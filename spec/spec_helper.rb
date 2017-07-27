require 'simplecov'

SimpleCov.start

require 'faraday'
require 'addressable/uri'
require 'vtex'
require 'webmock/rspec'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new(SimpleCov::Formatter::HTMLFormatter)

Dir['./spec/support/**/*.rb'].each {|file| require file }

RSpec.configure do |config|
  config.order = :random

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

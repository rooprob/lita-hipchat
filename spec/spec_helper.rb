require 'simplecov'
require 'coveralls'
formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new(formatters)

SimpleCov.start { add_filter '/spec/' }

require 'lita-hipchat'
require 'lita/rspec'

Lita.version_3_compatibility_mode = false

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'cswat'

require 'minitest/autorun'

require "minitest/reporters"
Minitest::Reporters.use!

require 'test/unit/assertions'

include Test::Unit::Assertions

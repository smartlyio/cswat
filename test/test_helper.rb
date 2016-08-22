$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'cswat'

require 'minitest/autorun'

require "minitest/reporters"
Minitest::Reporters.use!

require 'timeout'

require 'test/unit/assertions'

include Test::Unit::Assertions

def assert_all?(obj, m = nil, &blk)
  failed = []
  obj.each do |*a, &b|
    unless blk.call(*a, &b)
      failed << (a.size > 1 ? a : a[0])
    end
  end
  assert(failed.empty?, message(m) {failed.pretty_inspect})
end

def assert_raise_with_message(exception, expected, msg = nil, &block)
  case expected
  when String
    assert = :assert_equal
  when Regexp
    assert = :assert_match
  else
    raise TypeError, "Expected #{expected.inspect} to be a kind of String or Regexp, not #{expected.class}"
  end

  ex = assert_raise(exception, msg || "Exception(#{exception}) with message matches to #{expected.inspect}") {yield}
  msg = message(msg, "") {"Expected Exception(#{exception}) was raised, but the message doesn't match"}

  if assert == :assert_equal
    assert_equal(expected, ex.message, msg)
  else
    msg = message(msg) { "Expected #{mu_pp expected} to match #{mu_pp ex.message}" }
    assert expected =~ ex.message, msg
    block.binding.eval("proc{|_|$~=_}").call($~)
  end
  ex
end


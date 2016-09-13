require "test_helper"

class TestCSWat < Minitest::Benchmark
  def bench_range
    [100, 1_000, 10_000, 100_000, 1_000_000]
  end
  def bench_default_options_performance
    assert_performance_linear 0.999 do |n|
      CSWat.parse("1,2.1,\"Dwayne \"\"The Rock\"\" Johnson\",-1\n"*n)
    end
  end

  def bench_nonstandar_quote_performance
    assert_performance_linear 0.999 do |n| # n is a range value
      CSWat.parse("1,2.1,\"Dwayne \"The Rock\" Johnson\",-1\n"*n,
                  nonstandard_quote: true)
    end
  end

  def bench_nonstandar_quote_performance
    assert_performance_linear 0.999 do |n| # n is a range value
      CSWat.parse("1,2.1,\"Dwayne \"The Rock\" Johnson\",-1\n"*n,
                  graceful_errors: true)
    end
  end
end

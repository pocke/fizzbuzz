require "test_helper"

class FizzbuzzTest < Minitest::Test
  def test_fizzbuzz_1
    assert_equal [1], Fizzbuzz.fizzbuzz(1)
  end

  def test_fizzbuzz_15
    assert_equal [1, 2, "fizz", 4, "buzz", "fizz", 7,
                  8, "fizz", "buzz", 11, "fizz", 13,
                  14, "fizzbuzz"],
                 Fizzbuzz.fizzbuzz(15)
  end
end

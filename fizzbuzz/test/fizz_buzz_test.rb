require 'test_helper'
require 'fizz_buzz'

class FizzBuzzTest < Minitest::Test
  def setup
    @fb = FizzBuzz.new
  end

  def test_converts_multiple_of_fifteen_to_fizzbuzz
    assert_equal 'FizzBuzz', @fb.convert(15)
    assert_equal 'FizzBuzz', @fb.convert(45)
    assert_equal 'FizzBuzz', @fb.convert(90)
  end

  def test_converts_multiple_of_five_to_buzz
    assert_equal 'Buzz', @fb.convert(5)
    assert_equal 'Buzz', @fb.convert(20)
    assert_equal 'Buzz', @fb.convert(100)
  end

  def test_converts_multiple_of_three_to_fizz
    assert_equal 'Fizz', @fb.convert(3)
    assert_equal 'Fizz', @fb.convert(18)
    assert_equal 'Fizz', @fb.convert(42)
  end

  def test_returns_same_number_for_other_numbers
    assert_equal '1', @fb.convert(1)
    assert_equal '101', @fb.convert(101)
    assert_equal '2014', @fb.convert(2014)
  end
  
  def test_raises_argument_error_for_bad_argument
    skip 'not yet implemented'
    assert_raises(ArgumentError) { @fb.convert(-1) }
    assert_raises(ArgumentError) { @fb.convert(0) }
    assert_raises(ArgumentError) { @fb.convert(1.0) }
    assert_raises(ArgumentError) { @fb.convert('foo') }
    assert_raises(ArgumentError) { @fb.convert(nil) }
  end
end
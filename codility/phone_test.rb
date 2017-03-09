require 'pry'
require_relative 'phone'
require 'minitest/autorun'
require 'minitest/pride'

class PhoneTest < Minitest::Test
  def test_it_exists
    s = "00-44  48 5555 8361"
    phone = Phone.new.solution(s)
    assert_equal "004-448-555-583-61", phone
  end

  def test_another
    s = "0- 22 1985--324"
    phone = Phone.new.solution(s)
    assert_equal "022-198-53-24", phone
  end

  def test_last
    s = "555555555"
    phone = Phone.new.solution(s)
    assert_equal "555-555-555", phone
  end
end

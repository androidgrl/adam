require 'pry'
require_relative 'euclid'
require 'minitest/autorun'
require 'minitest/pride'

class EuclidTest < Minitest::Test
  def test_it_returns_correct_number_of_chocolates_eaten
    assert_equal 5, Euclid.new.solution(10, 4)
  end
end

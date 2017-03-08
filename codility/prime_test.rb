require 'pry'
require_relative 'prime'
require 'minitest/autorun'
require 'minitest/pride'

class PrimeTest < Minitest::Test
  def test_it_finds_the_smallest_perimeter_for_area_30
    area = 30
    result = Prime.new.solution(area)

    assert_equal 22, result
  end
end

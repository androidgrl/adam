require 'pry'
require_relative 'elevator'
require 'minitest/autorun'
require 'minitest/pride'

class ElevatorTest < Minitest::Test
  def test_first_case
    a = [60, 80, 40, 20]
    b = [2, 3, 5, 2]
    m = 5
    x = 2
    y = 200
    stops = Elevator.new.solution(a, b, m, x, y)

    assert_equal 5, stops
  end
end


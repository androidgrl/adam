require 'pry'
require_relative 'equilibrium'
require 'minitest/autorun'
require 'minitest/pride'

class EquilibriumTest < Minitest::Test
  def test_it_finds_the_index_on_a_single_array
    array = [1]
    solution = Equilibrium.new.solution(array)
    assert_equal 0, solution
  end

  def test_it_finds_the_index_on_a_two_element_array
    array = [1,2,1]
    solution = Equilibrium.new.solution(array)
    assert_equal 1, solution
  end

  def test_it_finds_the_index_on_a_larger_element_array
    array = [-1, 0, 3, 2, -3]
    solution = Equilibrium.new.solution(array)
    assert_equal 2, solution
  end
end

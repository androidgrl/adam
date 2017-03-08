class Equilibrium
  def solution(array)
    array.each_with_index do |n, i|
      if previous_elements(array, i) == following_elements(array, i)
        return i
      end
    end
    return -1
  end

  def previous_elements(array, i)
    if (i == 0) || (array.length <= 1)
      0
    else
      array[0..(i-1)].reduce(:+)
    end
  end

  def following_elements(array, i)
    if (i == array.length - 1) || (array.length <= 1)
      0
    else
      array[(i+1)..-1].reduce(:+)
    end
  end
end


class Euclid
  def solution(n, m)
    array = [*0..n-1]
    index = 0
    count = 0
    until array[index] == nil do
      array[index] = nil
      index = (index + m) % n
      count += 1
    end
    count
  end
end

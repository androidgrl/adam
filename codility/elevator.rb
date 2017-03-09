class Elevator
  def solution(a, b, m, x, y)
    top_floor = m
    max_capacity = x
    max_weight = y
    weights = a
    floors = b
    weights_and_floors = weights.zip(floors)
    stops = 0
    current_weight = 0
    current_capacity = 0

    indexes_of_next_trips = weights.each_with_index.map do |w, i|
      if (current_weight + w <= max_weight) && (current_capacity + 1 <= max_capacity)
        current_weight += w
        current_capacity += 1
        nil
      else
        current_weight = 0
        current_capacity = 0
        i
      end
    end.compact

    #split the array by the indexes_of_next_trips
    #this will give you the separate trips
  end
end

    # result = []
    # trips = weights_and_floors.map do |i, j|
    #   if (current_weight + i <= max_weight) && (current_capacity + 1 <= max_capacity)
    #     current_weight += i
    #     current_capacity += 1
    #     [i, j]
    #   end
    # end
    # result << trips

    # binding.pry

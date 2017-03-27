nums = (0...100).map { |i| (rand() * 1000).round(3) }

result = nums.sort_by { |n| n.to_s.split('.')[-1].to_i }

p result

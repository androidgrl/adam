class Prime
  def solution(n)
    area = n
    return 0 if area <= 0
    square_rounded = Math.sqrt(area).floor
    width = find_width(square_rounded, area)
    height = area / width
    2 * (width + height)
  end

  def find_width(square_rounded, area)
    square_rounded.downto(1) do |i|
      if area % i == 0
        return i
      end
    end
  end
end

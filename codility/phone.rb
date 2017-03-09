class Phone
  def solution(s)
    raw_phone = s
    numbers = raw_phone.gsub('-', '').gsub(' ', '')
    formatted_phone = numbers.chars.each_slice(3).map {|s| s << "-"}.join
    if numbers.length % 3 == 1
      formatted_phone[-3] = formatted_phone[-4]
      formatted_phone[-4] = "-"
    end
    return formatted_phone[0..-2]
  end
end

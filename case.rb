require 'pry'
class Hello
  def hello
    @hello = Bye.new.bye
    binding.pry
    self
  end
end

class Bye
  def bye
    "bye"
  end

end

puts Hello.new.hello

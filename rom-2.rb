#bindings are containers for local variables and have a pointer to self
#when a method is called on an object, a binding is put on the stack and self is set to the object it was called on, and the method executes in the binding

class GoldenRetriever
  def shed
    puts "PILE OF HAIR"
  end

  puts self

  def live
    puts self
    shed
    "woof"
  end
end

puts GoldenRetriever.new.live
#how does Ruby know where to find the shed method?
#normally it would know with an explicit receiver like dog.bark
#but here it has an implicit receiver, which is self which the binding knows
#self = the context with which the method was called
#so you could put puts self.shed and it'd be the same

class GoldenRetriever
  def run
    speed = "Trotting"
    speed
  end

  def speed
    "Galloping"
  end
end

puts GoldenRetriever.new.run
#why does the output trotting?
#Because Ruby looks for local var first then method
#if you wanted it to output galloping you would put self.speed
#because self will know that it is being called on the object and it will look for the instance variable

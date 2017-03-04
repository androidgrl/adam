class Dog
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def woof
    "#{name} says woof"
  end
end

puts Dog.new("Fido").woof

#Objects are instances of a class
#Objects have behavior(methods) and state(instance variables)
#Objects are containers for instance variables and have a pointer to their Class
#An object looks up it's methods stored on the Class through it's pointer
#Classes are containers for methods, methods are always contained in a class never an instance
#Method Lookup Chain starts when you call a method on an object, it'll look to the pointer to the
#Class look for it in it's class if it's not there it will go to the class's superclass

puts Dog.superclass.superclass

#Dog < Object < BasicObject

#you can override to_s which is defined on Object, by defining it in Dog, to make a custom to_s

class GoldenRetriever < Dog
  def shed
    "PILE OF HAIR"
  end
end

#puts GoldenRetriever.new
#This results in an error because it inherits initialize from Dog

puts GoldenRetriever.new("Sparky").shed

#If you have something that is not truly a type of something else then use module/mixin

module Tricks
  def sit
    "#{@name} sits"
  end
end

class GoldenRetriever
  include Tricks
end

puts GoldenRetriever.new("Sparky").sit

puts GoldenRetriever.class
puts GoldenRetriever.superclass

#GoldenRetriever's class is Class.  All classes are instances of Class.
p GoldenRetriever.ancestors

#When you call ancestors it will give you superclasses and also modules

class What
  def id
    3
  end

  def type
    'good'
  end
end

#is the same as

class What
  attr_reader :id, :type

  def initialize
    @id = 3
    @type = 'good'
  end
end

#Duck typing is when you don't care what type of object you're passing in, only that it has certain methods "behavior".
#Jenkins does continuous integration (runs tests automatically) and continuous deployment.
#It's better to be assertive than defensive for example in NonActiveModelResourceSerializer we had a lot of checks
#for nil, but now it can only accept a duck type object with certain attributes or else it will error out.

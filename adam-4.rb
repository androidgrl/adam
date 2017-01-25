let(:social_statistics) { Struct.new(:event, :time_frame) { include SocialStatistics }.new(event, time_frame) }

#this is the same as below

let(:social_statistics) do
  class SocialStatisticsHost < Struct.new(:event, :time_frame)
    include SocialStatistics
  end
  SocialStatisticsHost.new(event, time_frame)
end

#Struct is a quick way of creating a Class, while OpenStruct is a way of creating an instantiated object.
#OS creates a hash that you can access with dot notation, it's arbitrary like a hash because you can always add things to it
#In order to test a mixin you have to create a dummy class to mixit into
#ctrl-n and then c to change

#use named doubles instead of constants in tests because they're easier to trace

let(:id) { double(:id) }

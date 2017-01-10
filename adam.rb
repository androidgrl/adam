def self.find_by_endurance_id endurance_id, user_id=nil
  guid = ADPDao.instance.event_ids_to_guids(endurance_id).first
  guid = guid.fetch(:ASSET_ID) unless guid.nil?
  find_by_guid guid, user_id
rescue TinyTds::Error
  nil
end

#do this instead of

def self.find_by_endurance_id endurance_id, user_id=nil
  guid = ADPDao.instance.event_ids_to_guids(endurance_id).first
  if guid
    guid = guid.fetch(:ASSET_ID)
  else
    guid = nil
  end
  find_by_guid guid, user_id
rescue TinyTds::Error
  nil
end

#because you don't want to set a local variable inside of an if statement
#so instead assign it as the result returned from the statement
#also if you have else nil, that is the default return for else so don't need that line

module A
  module Memberships
    ID = 3
    class B
      def id
        Memberships::ID
        #looks from here upwards
      end

      def root_id
        ::Memberships::ID
        #looks outside in
      end
    end
  end
end

# if you call Memberships::ID it will look from there up the hierarchy, so it will find the module
# it's inside of and get 3
# if you call ::Memberships::ID it will look for a module Memberships that is not scoped withing anything,
# which means a file with module Memberships on the top
# if you have two files called membership.rb, rails will load the directories in alphabetical order so the first directory in the app directory

class A::B
end

#is the same as

module A
  class B
  end
end

#on the command line he changed my key settings to have option arrow move across a word
#use pry help for command line info or https://github.com/pry/pry/wiki/Command-system

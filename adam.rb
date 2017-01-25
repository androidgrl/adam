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
module Memberships
  ID = 1
end
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
#root constant resolution operator

# if you call Memberships::ID it will be inside the context of A::Memberships, so it will look for A::Memberships::ID
# it's inside of and get 3
# if you call ::Memberships::ID it will look for a module Memberships that is not scoped withing anything,
# which means a file with module Memberships on the top
# if you have two files called membership.rb, rails will load the directories in alphabetical order so the first directory in the app directory

module Api
  module Memberships
    class ContactAttemptsController < AnetController
      ::Memberships::AnetMemberIdHandler.new(member_id: member_id)
    end
  end
end

module Memberships
  class AnetMemberIdHandler
  end
end

#the above is called within the context of Api::Memberships::ContactAttemptsController
#so if you don't use the :: before it is going to look for Api::Memberships::AnetMemberIdHandler

class RetentionMember
  Memberships::AnetMemberIdHandler
end

#here there is no scope, so no need to scope out, it will call Memberships::AnetMemberIdHandler just as is.

module Memberships
  module SharedInsights
    Memberships::AT_RISK
  end
end

#it's going to look for Memberships::AT_RISK

class A::B
end

#is the same as

module A
  class B
  end
end

#on the command line he changed my key settings to have option arrow move across a word
#use pry help for command line info or https://github.com/pry/pry/wiki/Command-system

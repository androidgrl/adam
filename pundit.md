Say I want to make sure that a user has authority to delete a message.
The request will be DELETE /messages/:id
How do I know someone logged in doesn't change the id in the request and delete someone else's message?

Authorize the message in the destroy action (or set it as a before_action).

message = Message.find(params[:id])
authorize message

Which sends the message object to the message_policy.rb

def destroy?
  user.messages.map(&:id).include?(record.id)
end

Because the policy inherits from ApplicationPolicy, it automatically initializes user as current_user.
And initializes record as what was passed into authorize.

class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end
end

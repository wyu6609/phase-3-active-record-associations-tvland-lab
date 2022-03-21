class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def actor
    actor_id = self.actor_id
    Actor.find(actor_id)
  end

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
end

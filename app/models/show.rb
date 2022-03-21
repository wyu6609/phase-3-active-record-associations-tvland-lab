class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :shows
  belongs_to :network
  def network
    Network.find_by(name: network.nameself.network_id)
  end
  def actors_list
    actorNames = []
    self.actors.each { |actor| actorNames << actor.full_name }
    actorNames
  end
end

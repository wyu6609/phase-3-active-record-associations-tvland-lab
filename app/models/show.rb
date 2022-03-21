class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :shows
  belongs_to :network

  # returns the network that the show belongs to
  def network
    net_id = self.network_id
    Network.find(network_id: net_id)
  end

  def characters
    characterList = []
    self.characters.each { |character| characterList << character }
    characterList
  end

  def actors_list
    actorNames = []
    self.actors.each { |actor| actorNames << actor.full_name }
    actorNames
  end
end

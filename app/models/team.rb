class Team < ActiveRecord::Base
  has_many :players
  validates :players, length: { is: 15 }
end

def players
  players.length == 15
end


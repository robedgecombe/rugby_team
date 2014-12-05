class Team < ActiveRecord::Base
  has_many :players
  validate :player_count


  def player_count
    players.length == 15
  end

end


class TeamsController < ApplicationController

  def index
    @teams = Team.all
    @players1 = Team.find_by(id: 1).players
    @players2 = Team.find_by(id: 2).players
    @team1 = Team.find_by(id: 1).name
    @team2 = Team.find_by(id: 2).name
  end

  def player
    @player = Player.find(params[:id])
  end

end

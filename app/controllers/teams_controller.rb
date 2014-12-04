class TeamsController < ApplicationController

  def index
    @teams = Team.all
    @players = Team.first.players
    @team1 = Team.first.name
  end

  # def show_player
  #   @player = Player.find(params[:id])
  # end

end

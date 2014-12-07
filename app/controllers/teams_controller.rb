class TeamsController < ApplicationController

  def index
    @teams = Team.all
    @men = Player.all
    # @our_men
    p "go Rob"
     @men.each do |guy|
      p guy.id
    end
    # @these_guys = @teams.find_by(params[:id]).players
    # p @these_guys.first.name
    p "you're the man"
    @players = Team.find_by(params[:id]).players
    # p @players
    @players1 = Team.find_by(id: 1).players
    @players2 = Team.find_by(id: 2).players
    @team1 = Team.find_by(id: 1).name
    @team2 = Team.find_by(id: 2).name
    p @team2
  end

  def player
    @player = Player.find(params[:id])
  end

  def show_teams
    @teams.players
  end

end

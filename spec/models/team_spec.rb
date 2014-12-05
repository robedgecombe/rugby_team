require 'rails_helper'

RSpec.describe Team, :type => :model do

  it "returns an instance of a team" do
    all_blacks = Team.create
    expect(all_blacks).to be_an_instance_of(Team)
  end


  describe '#player_count' do

    it "consists of fifteen players" do
      team = Team.create(name: "All Blacks")
      15.times do
        team.players.create(
          name: "Some guy",
          position: "he can play anywhere")
      end
    expect(team.players.length).to eq(15)
    end

    it "must have exactly fifteen players" do
      next_team = Team.create(name: "England")
      14.times do
        next_team.players.create(
          name: "this un-co",
          position: "probably shouldn't be on the field"
          )
      end
    expect(next_team.player_count).to be false
    end

    it "will be valid if there are fifteen players" do
      third_team = Team.create(name: "All Blacks")
      15.times do
        third_team.players.create(
          name: "Some guy",
          position: "he can play anywhere")
      end
    expect(third_team.player_count).to be true
    end
  end
end

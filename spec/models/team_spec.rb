require 'rails_helper'

RSpec.describe Team, :type => :model do

  it "returns an instance of a team" do
    all_blacks = Team.new
    expect(all_blacks).to be_an_instance_of(Team)
  end

  describe "#players" do

    # it "consists of fifteen players"
    #   all_blacks = Team.new
    #   expect(all_blacks.players).to eq(15)
    # end

  # it "has fifteen players" do
  #   all_blacks = Team.new(players: 1)
  # end
  end
end

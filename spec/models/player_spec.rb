require 'rails_helper'

RSpec.describe Player, :type => :model do

  it "returns an instance of a player" do
    player = Player.new
    expect(player).to be_instance_of(Player)
  end

  it "has has a name and a position" do
    player = Player.new(name: "Jeff Wilson", position: "wing")
    expect(player).to be_valid
  end
end

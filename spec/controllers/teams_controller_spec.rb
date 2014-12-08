require 'rails_helper'

RSpec.describe TeamsController, :type => :controller do

  describe "#index" do


    describe "response" do

      it "returns an HTTP ok status" do
      team1 = Team.create(name: "All Blacks")
      15.times do
        team1.players.create(
          name: "Some guy",
          position: "he can play anywhere")
      end

      team2 = Team.create(name: "Springboks")
      15.times do
        team2.players.create(
          name: "Some other guy",
          position: "he can't really play")
      end
        get :index
        expect(response).to have_http_status(:ok)
      end
    end
  end
end

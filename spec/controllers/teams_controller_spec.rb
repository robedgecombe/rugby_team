require 'rails_helper'

RSpec.describe TeamsController, :type => :controller do

  describe "#index" do


    describe "response" do
      before { get :index }
      all_blacks = Team.new
      player = Player.new(name: "Jeff Wilson", position: "wing")

      it "returns an HTTP ok status" do
        expect(response).to have_http_status(:ok)
      end

    end
  end
end

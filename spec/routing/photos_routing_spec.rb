require "rails_helper"

RSpec.describe PhotosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/photos").to route_to("photos#index")
    end

  end
end

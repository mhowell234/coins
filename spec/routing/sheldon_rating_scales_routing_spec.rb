require "spec_helper"

describe SheldonRatingScalesController do
  describe "routing" do

    it "routes to #index" do
      get("/sheldon_rating_scales").should route_to("sheldon_rating_scales#index")
    end

    it "routes to #new" do
      get("/sheldon_rating_scales/new").should route_to("sheldon_rating_scales#new")
    end

    it "routes to #show" do
      get("/sheldon_rating_scales/1").should route_to("sheldon_rating_scales#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sheldon_rating_scales/1/edit").should route_to("sheldon_rating_scales#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sheldon_rating_scales").should route_to("sheldon_rating_scales#create")
    end

    it "routes to #update" do
      put("/sheldon_rating_scales/1").should route_to("sheldon_rating_scales#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sheldon_rating_scales/1").should route_to("sheldon_rating_scales#destroy", :id => "1")
    end

  end
end

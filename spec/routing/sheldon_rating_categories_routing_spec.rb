require "spec_helper"

describe SheldonRatingCategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/sheldon_rating_categories").should route_to("sheldon_rating_categories#index")
    end

    it "routes to #new" do
      get("/sheldon_rating_categories/new").should route_to("sheldon_rating_categories#new")
    end

    it "routes to #show" do
      get("/sheldon_rating_categories/1").should route_to("sheldon_rating_categories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sheldon_rating_categories/1/edit").should route_to("sheldon_rating_categories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sheldon_rating_categories").should route_to("sheldon_rating_categories#create")
    end

    it "routes to #update" do
      put("/sheldon_rating_categories/1").should route_to("sheldon_rating_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sheldon_rating_categories/1").should route_to("sheldon_rating_categories#destroy", :id => "1")
    end

  end
end

require "spec_helper"

describe RatingAgenciesController do
  describe "routing" do

    it "routes to #index" do
      get("/rating_agencies").should route_to("rating_agencies#index")
    end

    it "routes to #new" do
      get("/rating_agencies/new").should route_to("rating_agencies#new")
    end

    it "routes to #show" do
      get("/rating_agencies/1").should route_to("rating_agencies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/rating_agencies/1/edit").should route_to("rating_agencies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/rating_agencies").should route_to("rating_agencies#create")
    end

    it "routes to #update" do
      put("/rating_agencies/1").should route_to("rating_agencies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/rating_agencies/1").should route_to("rating_agencies#destroy", :id => "1")
    end

  end
end

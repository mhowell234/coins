require "spec_helper"

describe YearCoinsController do
  describe "routing" do

    it "routes to #index" do
      get("/year_coins").should route_to("year_coins#index")
    end

    it "routes to #new" do
      get("/year_coins/new").should route_to("year_coins#new")
    end

    it "routes to #show" do
      get("/year_coins/1").should route_to("year_coins#show", :id => "1")
    end

    it "routes to #edit" do
      get("/year_coins/1/edit").should route_to("year_coins#edit", :id => "1")
    end

    it "routes to #create" do
      post("/year_coins").should route_to("year_coins#create")
    end

    it "routes to #update" do
      put("/year_coins/1").should route_to("year_coins#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/year_coins/1").should route_to("year_coins#destroy", :id => "1")
    end

  end
end

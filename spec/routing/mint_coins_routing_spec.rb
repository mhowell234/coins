require "spec_helper"

describe MintCoinsController do
  describe "routing" do

    it "routes to #index" do
      get("/mint_coins").should route_to("mint_coins#index")
    end

    it "routes to #new" do
      get("/mint_coins/new").should route_to("mint_coins#new")
    end

    it "routes to #show" do
      get("/mint_coins/1").should route_to("mint_coins#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mint_coins/1/edit").should route_to("mint_coins#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mint_coins").should route_to("mint_coins#create")
    end

    it "routes to #update" do
      put("/mint_coins/1").should route_to("mint_coins#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mint_coins/1").should route_to("mint_coins#destroy", :id => "1")
    end

  end
end

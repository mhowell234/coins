require "spec_helper"

describe MintCoinAttributesController do
  describe "routing" do

    it "routes to #index" do
      get("/mint_coin_attributes").should route_to("mint_coin_attributes#index")
    end

    it "routes to #new" do
      get("/mint_coin_attributes/new").should route_to("mint_coin_attributes#new")
    end

    it "routes to #show" do
      get("/mint_coin_attributes/1").should route_to("mint_coin_attributes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mint_coin_attributes/1/edit").should route_to("mint_coin_attributes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mint_coin_attributes").should route_to("mint_coin_attributes#create")
    end

    it "routes to #update" do
      put("/mint_coin_attributes/1").should route_to("mint_coin_attributes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mint_coin_attributes/1").should route_to("mint_coin_attributes#destroy", :id => "1")
    end

  end
end

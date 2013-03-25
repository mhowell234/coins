require "spec_helper"

describe CoinAttributesController do
  describe "routing" do

    it "routes to #index" do
      get("/coin_attributes").should route_to("coin_attributes#index")
    end

    it "routes to #new" do
      get("/coin_attributes/new").should route_to("coin_attributes#new")
    end

    it "routes to #show" do
      get("/coin_attributes/1").should route_to("coin_attributes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/coin_attributes/1/edit").should route_to("coin_attributes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/coin_attributes").should route_to("coin_attributes#create")
    end

    it "routes to #update" do
      put("/coin_attributes/1").should route_to("coin_attributes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/coin_attributes/1").should route_to("coin_attributes#destroy", :id => "1")
    end

  end
end

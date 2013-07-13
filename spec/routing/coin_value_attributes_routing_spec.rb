require "spec_helper"

describe CoinValueAttributesController do
  describe "routing" do

    it "routes to #index" do
      get("/coin_value_attributes").should route_to("coin_value_attributes#index")
    end

    it "routes to #new" do
      get("/coin_value_attributes/new").should route_to("coin_value_attributes#new")
    end

    it "routes to #show" do
      get("/coin_value_attributes/1").should route_to("coin_value_attributes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/coin_value_attributes/1/edit").should route_to("coin_value_attributes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/coin_value_attributes").should route_to("coin_value_attributes#create")
    end

    it "routes to #update" do
      put("/coin_value_attributes/1").should route_to("coin_value_attributes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/coin_value_attributes/1").should route_to("coin_value_attributes#destroy", :id => "1")
    end

  end
end

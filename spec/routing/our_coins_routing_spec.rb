require "spec_helper"

describe OurCoinsController do
  describe "routing" do

    it "routes to #index" do
      get("/our_coins").should route_to("our_coins#index")
    end

    it "routes to #new" do
      get("/our_coins/new").should route_to("our_coins#new")
    end

    it "routes to #show" do
      get("/our_coins/1").should route_to("our_coins#show", :id => "1")
    end

    it "routes to #edit" do
      get("/our_coins/1/edit").should route_to("our_coins#edit", :id => "1")
    end

    it "routes to #create" do
      post("/our_coins").should route_to("our_coins#create")
    end

    it "routes to #update" do
      put("/our_coins/1").should route_to("our_coins#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/our_coins/1").should route_to("our_coins#destroy", :id => "1")
    end

  end
end

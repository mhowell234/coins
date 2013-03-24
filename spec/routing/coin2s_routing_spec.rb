require "spec_helper"

describe Coin2sController do
  describe "routing" do

    it "routes to #index" do
      get("/coin2s").should route_to("coin2s#index")
    end

    it "routes to #new" do
      get("/coin2s/new").should route_to("coin2s#new")
    end

    it "routes to #show" do
      get("/coin2s/1").should route_to("coin2s#show", :id => "1")
    end

    it "routes to #edit" do
      get("/coin2s/1/edit").should route_to("coin2s#edit", :id => "1")
    end

    it "routes to #create" do
      post("/coin2s").should route_to("coin2s#create")
    end

    it "routes to #update" do
      put("/coin2s/1").should route_to("coin2s#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/coin2s/1").should route_to("coin2s#destroy", :id => "1")
    end

  end
end

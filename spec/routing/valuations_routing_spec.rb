require "spec_helper"

describe ValuationsController do
  describe "routing" do

    it "routes to #index" do
      get("/valuations").should route_to("valuations#index")
    end

    it "routes to #new" do
      get("/valuations/new").should route_to("valuations#new")
    end

    it "routes to #show" do
      get("/valuations/1").should route_to("valuations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/valuations/1/edit").should route_to("valuations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/valuations").should route_to("valuations#create")
    end

    it "routes to #update" do
      put("/valuations/1").should route_to("valuations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/valuations/1").should route_to("valuations#destroy", :id => "1")
    end

  end
end

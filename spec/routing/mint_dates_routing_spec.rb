require "spec_helper"

describe MintDatesController do
  describe "routing" do

    it "routes to #index" do
      get("/mint_dates").should route_to("mint_dates#index")
    end

    it "routes to #new" do
      get("/mint_dates/new").should route_to("mint_dates#new")
    end

    it "routes to #show" do
      get("/mint_dates/1").should route_to("mint_dates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mint_dates/1/edit").should route_to("mint_dates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mint_dates").should route_to("mint_dates#create")
    end

    it "routes to #update" do
      put("/mint_dates/1").should route_to("mint_dates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mint_dates/1").should route_to("mint_dates#destroy", :id => "1")
    end

  end
end

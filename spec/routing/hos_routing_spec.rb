require "spec_helper"

describe HosController do
  describe "routing" do

    it "routes to #index" do
      get("/hos").should route_to("hos#index")
    end

    it "routes to #new" do
      get("/hos/new").should route_to("hos#new")
    end

    it "routes to #show" do
      get("/hos/1").should route_to("hos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hos/1/edit").should route_to("hos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hos").should route_to("hos#create")
    end

    it "routes to #update" do
      put("/hos/1").should route_to("hos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hos/1").should route_to("hos#destroy", :id => "1")
    end

  end
end

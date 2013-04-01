require "spec_helper"

describe PreciousMetalsController do
  describe "routing" do

    it "routes to #index" do
      get("/precious_metals").should route_to("precious_metals#index")
    end

    it "routes to #new" do
      get("/precious_metals/new").should route_to("precious_metals#new")
    end

    it "routes to #show" do
      get("/precious_metals/1").should route_to("precious_metals#show", :id => "1")
    end

    it "routes to #edit" do
      get("/precious_metals/1/edit").should route_to("precious_metals#edit", :id => "1")
    end

    it "routes to #create" do
      post("/precious_metals").should route_to("precious_metals#create")
    end

    it "routes to #update" do
      put("/precious_metals/1").should route_to("precious_metals#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/precious_metals/1").should route_to("precious_metals#destroy", :id => "1")
    end

  end
end

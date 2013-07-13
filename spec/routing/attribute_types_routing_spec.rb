require "spec_helper"

describe AttributeTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/attribute_types").should route_to("attribute_types#index")
    end

    it "routes to #new" do
      get("/attribute_types/new").should route_to("attribute_types#new")
    end

    it "routes to #show" do
      get("/attribute_types/1").should route_to("attribute_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/attribute_types/1/edit").should route_to("attribute_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/attribute_types").should route_to("attribute_types#create")
    end

    it "routes to #update" do
      put("/attribute_types/1").should route_to("attribute_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/attribute_types/1").should route_to("attribute_types#destroy", :id => "1")
    end

  end
end

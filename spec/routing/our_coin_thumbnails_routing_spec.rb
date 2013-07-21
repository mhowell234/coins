require "spec_helper"

describe OurCoinThumbnailsController do
  describe "routing" do

    it "routes to #index" do
      get("/our_coin_thumbnails").should route_to("our_coin_thumbnails#index")
    end

    it "routes to #new" do
      get("/our_coin_thumbnails/new").should route_to("our_coin_thumbnails#new")
    end

    it "routes to #show" do
      get("/our_coin_thumbnails/1").should route_to("our_coin_thumbnails#show", :id => "1")
    end

    it "routes to #edit" do
      get("/our_coin_thumbnails/1/edit").should route_to("our_coin_thumbnails#edit", :id => "1")
    end

    it "routes to #create" do
      post("/our_coin_thumbnails").should route_to("our_coin_thumbnails#create")
    end

    it "routes to #update" do
      put("/our_coin_thumbnails/1").should route_to("our_coin_thumbnails#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/our_coin_thumbnails/1").should route_to("our_coin_thumbnails#destroy", :id => "1")
    end

  end
end

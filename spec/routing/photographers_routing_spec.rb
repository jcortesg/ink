require "spec_helper"

describe PhotographersController do
  describe "routing" do

    it "routes to #index" do
      get("/photographers").should route_to("photographers#index")
    end

    it "routes to #new" do
      get("/photographers/new").should route_to("photographers#new")
    end

    it "routes to #show" do
      get("/photographers/1").should route_to("photographers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/photographers/1/edit").should route_to("photographers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/photographers").should route_to("photographers#create")
    end

    it "routes to #update" do
      put("/photographers/1").should route_to("photographers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/photographers/1").should route_to("photographers#destroy", :id => "1")
    end

  end
end

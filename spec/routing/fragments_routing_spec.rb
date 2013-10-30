require "spec_helper"

describe FragmentsController do
  describe "routing" do

    it "routes to #index" do
      get("/fragments").should route_to("fragments#index")
    end

    it "routes to #new" do
      get("/fragments/new").should route_to("fragments#new")
    end

    it "routes to #show" do
      get("/fragments/1").should route_to("fragments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fragments/1/edit").should route_to("fragments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fragments").should route_to("fragments#create")
    end

    it "routes to #update" do
      put("/fragments/1").should route_to("fragments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fragments/1").should route_to("fragments#destroy", :id => "1")
    end

  end
end

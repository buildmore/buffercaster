require "rails_helper"

RSpec.describe BuffersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/buffers").to route_to("buffers#index")
    end

    it "routes to #new" do
      expect(:get => "/buffers/new").to route_to("buffers#new")
    end

    it "routes to #show" do
      expect(:get => "/buffers/1").to route_to("buffers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/buffers/1/edit").to route_to("buffers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/buffers").to route_to("buffers#create")
    end

    it "routes to #update" do
      expect(:put => "/buffers/1").to route_to("buffers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/buffers/1").to route_to("buffers#destroy", :id => "1")
    end

  end
end

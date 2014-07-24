require 'rails_helper'

RSpec.describe "Segments", :type => :request do
  describe "GET /segments" do
    it "works! (now write some real specs)" do
      get segments_path
      expect(response.status).to be(200)
    end
  end
end

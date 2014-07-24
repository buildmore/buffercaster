require 'rails_helper'

RSpec.describe "Buffers", :type => :request do
  describe "GET /buffers" do
    it "works! (now write some real specs)" do
      get buffers_path
      expect(response.status).to be(200)
    end
  end
end

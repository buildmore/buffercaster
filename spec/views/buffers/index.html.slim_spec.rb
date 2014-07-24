require 'rails_helper'

RSpec.describe "buffers/index", :type => :view do
  before(:each) do
    assign(:buffers, [
      Buffer.create!(
        :name => "Name",
        :episode_file => "Episode File",
        :description => "Description"
      ),
      Buffer.create!(
        :name => "Name",
        :episode_file => "Episode File",
        :description => "Description"
      )
    ])
  end

  it "renders a list of buffers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Episode File".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end

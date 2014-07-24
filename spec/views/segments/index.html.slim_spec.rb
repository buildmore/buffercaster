require 'rails_helper'

RSpec.describe "segments/index", :type => :view do
  before(:each) do
    assign(:segments, [
      Segment.create!(
        :name => "Name",
        :audio_file => "Audio File",
        :description => "Description"
      ),
      Segment.create!(
        :name => "Name",
        :audio_file => "Audio File",
        :description => "Description"
      )
    ])
  end

  it "renders a list of segments" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Audio File".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end

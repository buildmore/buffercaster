require 'rails_helper'

RSpec.describe "segments/show", :type => :view do
  before(:each) do
    @segment = assign(:segment, Segment.create!(
      :name => "Name",
      :audio_file => "Audio File",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Audio File/)
    expect(rendered).to match(/Description/)
  end
end

require 'rails_helper'

RSpec.describe "buffers/show", :type => :view do
  before(:each) do
    @buffer = assign(:buffer, Buffer.create!(
      :name => "Name",
      :episode_file => "Episode File",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Episode File/)
    expect(rendered).to match(/Description/)
  end
end

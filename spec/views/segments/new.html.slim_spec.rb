require 'rails_helper'

RSpec.describe "segments/new", :type => :view do
  before(:each) do
    assign(:segment, Segment.new(
      :name => "MyString",
      :audio_file => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new segment form" do
    render

    assert_select "form[action=?][method=?]", segments_path, "post" do

      assert_select "input#segment_name[name=?]", "segment[name]"

      assert_select "input#segment_audio_file[name=?]", "segment[audio_file]"

      assert_select "input#segment_description[name=?]", "segment[description]"
    end
  end
end

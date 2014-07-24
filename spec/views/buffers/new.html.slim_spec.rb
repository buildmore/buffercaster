require 'rails_helper'

RSpec.describe "buffers/new", :type => :view do
  before(:each) do
    assign(:buffer, Buffer.new(
      :name => "MyString",
      :episode_file => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new buffer form" do
    render

    assert_select "form[action=?][method=?]", buffers_path, "post" do

      assert_select "input#buffer_name[name=?]", "buffer[name]"

      assert_select "input#buffer_episode_file[name=?]", "buffer[episode_file]"

      assert_select "input#buffer_description[name=?]", "buffer[description]"
    end
  end
end

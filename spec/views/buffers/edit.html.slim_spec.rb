require 'rails_helper'

RSpec.describe "buffers/edit", :type => :view do
  before(:each) do
    @buffer = assign(:buffer, Buffer.create!(
      :name => "MyString",
      :episode_file => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit buffer form" do
    render

    assert_select "form[action=?][method=?]", buffer_path(@buffer), "post" do

      assert_select "input#buffer_name[name=?]", "buffer[name]"

      assert_select "input#buffer_episode_file[name=?]", "buffer[episode_file]"

      assert_select "input#buffer_description[name=?]", "buffer[description]"
    end
  end
end

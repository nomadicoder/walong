require 'spec_helper'

describe "videos/edit" do
  before(:each) do
    @video = assign(:video, stub_model(Video,
      :title => "MyString",
      :creator => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit video form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    pending "form[action=?][method=?]", video_path(@video), "post" do
      assert_select "input#video_title[name=?]", "video[title]"
      pending "input#video_creator[name=?]", "video[creator]"
      assert_select "textarea#video_description[name=?]", "video[description]"
    end
  end
end

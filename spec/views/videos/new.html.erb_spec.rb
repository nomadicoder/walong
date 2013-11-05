require 'spec_helper'

describe "videos/new" do
  before(:each) do
    assign(:video, stub_model(Video,
      :title => "MyString",
      :creator => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new video form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", videos_path, "post" do
      assert_select "input#video_title[name=?]", "video[title]"
      assert_select "input#video_creator[name=?]", "video[creator]"
      assert_select "textarea#video_description[name=?]", "video[description]"
    end
  end
end

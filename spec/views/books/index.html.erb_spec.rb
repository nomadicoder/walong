require 'spec_helper'

describe "books/index" do
  before(:each) do
    assign(:books, [
      stub_model(Book,
        :title => "Title",
        :creator => "Creator",
        :publisher => "Publisher",
        :dateCopyrighted => "Date Copyrighted",
        :abstract => "MyText"
      ),
      stub_model(Book,
        :title => "Title",
        :creator => "Creator",
        :publisher => "Publisher",
        :dateCopyrighted => "Date Copyrighted",
        :abstract => "MyText"
      )
    ])
  end

  it "renders a list of books" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    pending "tr>td", :text => "Creator".to_s, :count => 2
    assert_select "tr>td", :text => "Publisher".to_s, :count => 2
    assert_select "tr>td", :text => "Date Copyrighted".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

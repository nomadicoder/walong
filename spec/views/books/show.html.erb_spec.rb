require 'spec_helper'

describe "books/show" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :title => "Title",
      :creator => "Creator",
      :publisher => "Publisher",
      :dateCopyrighted => "Date Copyrighted",
      :abstract => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Creator/)
    rendered.should match(/Publisher/)
    rendered.should match(/Date Copyrighted/)
    rendered.should match(/MyText/)
  end
end

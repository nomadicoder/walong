require 'spec_helper'

describe "books/edit" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :title => "MyString",
      :creator => "MyString",
      :publisher => "MyString",
      :dateCopyrighted => "MyString",
      :abstract => "MyText"
    ))
  end

  it "renders the edit book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", book_path(@book), "post" do
      assert_select "input#book_title[name=?]", "book[title]"
      pending "input#book_creator[name=?]", "book[creator]"
      assert_select "input#book_publisher[name=?]", "book[publisher]"
      assert_select "input#book_dateCopyrighted[name=?]", "book[dateCopyrighted]"
      assert_select "textarea#book_abstract[name=?]", "book[abstract]"
    end
  end
end

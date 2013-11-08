Given(/^a book$/) do
  @book = Book.new
end

When(/^I enter the title as "(.*?)"$/) do |title|
  @book.title = title
end

When(/^I enter author as "(.*?)"$/) do |author|
  @book.creator = author
end

When(/^I enter "(.*?)" for the publisher$/) do |publisher|
  @book.publisher = publisher
end

When(/^I enter the copyright to be "(.*?)"$/) do |copyright|
  @book.dateCopyrighted = copyright
end

When(/^I enter the description to be "(.*?)"$/) do |description|
  @book.abstract = description
end

Then(/^I the title should be "(.*?)"$/) do |title|
  @book.title.should eq(title)
end

Then(/^the author should be "(.*?)"$/) do |author|
  @book.creator[0].should eq(author)
end

Then(/^the publisher should be "(.*?)"$/) do |publisher|
  @book.publisher.should eq(publisher)
end

Then(/^the copyright should be "(.*?)"$/) do |copyrightDate|
  @book.dateCopyrighted.should eq(copyrightDate)
end

Then(/^the description should be "(.*?)"$/) do |description|
  @book.abstract.should eq(description)
end

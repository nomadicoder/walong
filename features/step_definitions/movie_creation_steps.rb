Given(/^a video$/) do
  @video = Video.new
end

When(/^I enter the videoTitle as "(.*?)"$/) do |title|
  @video.title = title
end

When(/^I enter videoCreator as "(.*?)"$/) do |creator|
  @video.creator = creator
end

When(/^I enter the videoDescription to be "(.*?)"$/) do |description|
  @video.description = description
end

Then(/^I the videoTitle should be "(.*?)"$/) do |title|
  @video.title.should eq(title)
end

Then(/^the videoCreator should be "(.*?)"$/) do |creator|
  @video.creator.first.should eq(creator)
end

Then(/^the videoDescription should be "(.*?)"$/) do |description|
  @video.description.should eq(description)
end

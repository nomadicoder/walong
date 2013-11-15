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

When(/^I upload the video content "(.*?)"$/) do |videoFile|
  @video.mediaContent.content = File.open(videoFile)
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

Then(/^the video content should be "(.*?)"$/) do |videoFile|
  Digest::MD5.digest(File.read(videoFile)).should eq(Digest::MD5.digest(File.read(@video.mediaContent.content)))
end

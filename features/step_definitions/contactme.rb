path = "D:/Ruby_test/drivers/chromedriver.exe"

Given(/^I navigate to Contact Me page$/) do
  @browser = Selenium::WebDriver.for :chrome, driver_path:path
  url = "http://www.old.practicalsqa.net/contact-me/"
  @browser.navigate.to url
end

When(/^I verify Contact Me page loaded$/) do
  @browser.find_element(xpath: "//h1[@class='entry-title' and text()='Contact Me']")
end

Then(/^I write my comment "([^"]*)"$/) do |arg|
  @browser.find_element(id: "comment").send_keys arg
end

And(/^I click on Post Comment button$/) do
  @browser.find_element(id: "submit").click
end
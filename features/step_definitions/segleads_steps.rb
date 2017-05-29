#encoding: utf-8

#Login

Given(/^I load the "([^"]*)" page$/) do |site|
  visit site
end

When(/^I login in with valid user$/) do
  @login.authorized_user
end

Then(/^I should see the "([^"]*)" page$/) do |page|
  expect(@sgleads.sgleads_page.text).to eql page
end

#Segmentation Leads

Given(/^I am on "([^"]*)" page$/) do |page|
  @sgleads.sgmt_button.click
  expect(@sgleads.nsgmt_popup.text).to eql page
end

When(/^I enter with "([^"]*)"$/) do |name|
  @value = name
  @sgleads.sgmt_name.set name
  @sgleads.sgcreate_button.click
end

When(/^I fill the segmentation by "([^"]*)"$/) do |mgr|
  expect(@sgleads.sglist_opt.value).to eql @value
  @sgleads.manager_segmentation(mgr)
end

When(/^I select preview segmentation$/) do
  @sgleads.sgpreview_button.click
end

When(/^I save the segmentation leads$/) do
  @sgleads.sgsave_button.click
end

When(/^I search for "([^"]*)" segmentation$/) do |sgname|
  @sgleads.sgsearch_button.set sgname
end

Then(/^I should see a preview segmentation list$/) do
  expect(@sgleads.sglist_view.text).to eql "Pré visualização da lista de segmentação"
end

Then(/^I should see the "([^"]*)" on the segmentation list$/) do |sglist|
  value = find("a", text: "Oportunidades Comerciais").text
  #value = within find('tr', text:'Oportunidades Comerciais').text
  expect(value).to eql sglist
  #expect(@sgleads.verify_sglist.text).to eql sglist
end

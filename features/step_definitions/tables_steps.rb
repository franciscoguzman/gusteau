#require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Given /^I am on the tables page$/ do
  FactoryGirl.create(:table)
  visit '/tables'
end

Then /^I am on the table page for "([^\"]*)"$/ do |element_name|
  table = FactoryGirl.create(:table, :name => element_name)
  visit table_path(table)
  current_path.should == "/tables/#{table.id}"
end

Then /^I should be on the table page for "([^\"]*)"$/ do |element_name|
  table = FactoryGirl.create(:table, :name => element_name)
  #table = Table.find_by_name element_name
  visit table_path(table)
  current_path.should == "/tables/#{table.id}"
end



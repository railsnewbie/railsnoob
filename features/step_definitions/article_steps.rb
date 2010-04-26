Given /^the following articles:$/ do |articles|
  Article.create!(articles.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) article$/ do |pos|
  visit articles_url
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following articles:$/ do |expected_articles_table|
  expected_articles_table.diff!(tableish('table tr', 'td,th'))
end

When /^I select "(.*?)"$/ do |something|
  visit '/'
  select(something, :from => 'rawrblah')
end

When /^I spoof the change$/ do
  visit '/'
  find('select#rawrblah').trigger :change
end

Then /^something should happen$/ do
  find('p.message').should be_visible
end

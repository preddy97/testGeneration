Given /^I'm going to use the API: (.*)$/ do |link|
  @restURL = link
end

Given /^the following authentications:$/ do |table|
  if @users == nil
    @users = Hash.new
  end

  temp = table.hashes
  for i in 0..temp.size-1
    userName = temp[i]["name"]
    @users[userName] = temp[i]
  end
end

Before do
  @objects = Hash.new
  @lists = Hash.new
end

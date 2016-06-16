require 'httparty'
require 'test/unit/assertions'
include Test::Unit::Assertions

When /^(.*) deletes (.*)/ do |usr, str|
  @last_response = HTTParty.delete(convToURL(str),
                                   headers: {"X-Namespace" => @users[usr]["namespace"]})

end

When /^(.*) with header @(.*) deletes (.*)/ do |usr, obj, str|
  header = @objects[obj]
  header["X-Namespace"] = @users[usr]["namespace"]
  @last_response = HTTParty.delete(convToURL(str),
                                   headers: header)
end

When /^(.*) deletes the random object from (.*):$/ do |usr, str|
    @last_response = HTTParty.delete(randObjURL(str),
                                     headers: {"X-Namespace" => @users[usr]["namespace"]})
end                                 

Then /^the delete should be successful$/ do
  assert_equal @last_response.code, 204
end

Then /^the delete should be unsuccessful$/ do
  assert_not_equal @last_response.code, 204
end

require 'httparty'
require 'test/unit/assertions'
include Test::Unit::Assertions

When /^(.*) deletes a (.*)/ do |usr, str|
  @last_response = HTTParty.delete(convToURL(str),
                                   headers: {"X-Namespace" => @users[usr]["namespace"]})

end

When /^(.*) with header @(.*) deletes (.*)/ do |usr, obj, str|
  header = @objects[obj]
  header["X-Namespace"] = @users[usr]["namespace"]
  @last_response = HTTParty.delete(convToURL(str),
                                   headers: header)
end

When /^(.*) deletes the random object from (.*)$/ do |usr, str|
    @last_response = HTTParty.delete(randObjURL(str),
                                     headers: {"X-Namespace" => @users[usr]["namespace"]})
end

Then /^the delete should be successful$/ do
  puts @last_response.body
  puts @last_response.code
  if (@last_response.code>199 && @last_response.code<300)
    assert true
  else
    assert false
  end
end

Then /^the delete should be unsuccessful$/ do
    if (@last_response.code>199 && @last_response.code<300)
      assert false
    else
      assert true
    end
end

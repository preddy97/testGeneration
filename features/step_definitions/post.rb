require 'httparty'
require 'test/unit/assertions'
include Test::Unit::Assertions

When /^(.*) creates a (.*) in (.*):$/ do |usr, _, str, table|
  temp = table.hashes[0]
  temp.each {|key, value| convToBoolean(temp, key,value) }
  temp = temp.to_json
  @last_response = HTTParty.post(convToURL(str),
                                 body: temp,
                                 headers: {"X-Namespace" => @users[usr]["namespace"]})
end

When /^(.*) with header @(.*) creates a (.*) in (.*):$/ do |usr, obj, _, str, table|
  temp = table.hashes[0]
  temp.each {|key, value| convToBoolean(temp, key,value) }
  temp = temp.to_json
  header = @objects[obj]
  header["X-Namespace"] = @users[usr]["namespace"]
  @last_response = HTTParty.post(convToURL(str),
                                 body: temp,
                                 headers: header)
end

Then /^the (creation|update) should be successful$/ do |_|
    puts @last_response.code
    puts @last_response.body
  if (@last_response.code>199 && @last_response.code<300)
    assert true
  else
    assert false
  end
end

Then /^the (creation|update) should be unsuccessful/ do |_|
  if (@last_response.code>199 && @last_response.code<300)
    assert false
  else
    assert true
  end
end

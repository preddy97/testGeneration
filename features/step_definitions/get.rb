require 'httparty'
require 'json'
require 'test/unit/assertions'
include Test::Unit::Assertions

When /^(.*) requests (.*)$/ do |usr, str|
  @last_response = HTTParty.get(convToURL(str),
                                headers: {"X-Namespace" => @users[usr]["namespace"]})
end

When /^(.*) with header @(.*) requests (.*)$/ do |usr, obj, str|
  header = @objects[obj]
  header["X-Namespace"] = @users[usr]["namespace"]
  @last_response = HTTParty.get(convToURL(str),
                                headers: header)
end

When /^(.*) asks the (.*) for:$/ do |usr, str, table|
  temp = table.hashes[0]
  temp.each {|key, value| convToBoolean(temp, key,value) }
  @last_response = HTTParty.get(convToURL(str),
                                query: temp,
                                headers: {"X-Namespace" => @users[usr]["namespace"]})
end

When /^(.*) asks for the random object from (.*)$/ do |usr, str|
    @last_response = HTTParty.get(randObjURL(str),
                                  headers: {"X-Namespace" => @users[usr]["namespace"]})
end

When /^(.*) with header @(.*) asks the (.*) for:$/ do |usr, obj, str, table|
  temp = table.hashes[0]
  temp.each {|key, value| convToBoolean(temp, key,value) }
  header = @objects[obj]
  header["X-Namespace"] = @users[usr]["namespace"]
  @last_response = HTTParty.get(convToURL(str),
                                query: temp,
                                headers: header)
end

Then /^the request should be successful$/ do
  puts @last_response.code
  if (@last_response.code==200)
    assert true
  else
    assert false
  end
end

Then /^the request should be unsuccessful$/ do
  if (@last_response.code==200)
    assert false
  else
    assert true
  end
end

Then /^the response should have (.*) elements$/ do |num|
  temp = JSON.parse(@last_response.body)
  if (temp.class.to_s=="Hash")
    size = 1
  else
    size = temp.size
  end
  assert_equal Integer(num),size
end

Then /^the (.*) of the response should contain:$/ do |type, table|

  actual = getActual(type)
  expected = table.hashes

  checkForAll(actual, expected)
end

Then /^the (.*) of the response should be exactly:$/ do |type, table|

  actual = getActual(type)
  expected = table.hashes

  if expected.size != actual.size
    assert false
  end
  checkForAll(actual, expected)
end

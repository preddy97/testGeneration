require 'httparty'
require 'test/unit/assertions'
include Test::Unit::Assertions

When /^(.*) puts a (.*) in (.*):/ do |usr, _, str, table|
  temp = table.hashes[0]
  temp.each {|key, value| convToBoolean(temp, key,value) }
  temp = temp.to_json
  @last_response = HTTParty.put(convToURL(str),
                                body: temp,
                                headers: {"X-Namespace" => @users[usr]["namespace"]})
end

When /^(.*) with header @(.*) puts a (.*) in (.*):/ do |usr, obj, _, str, table|
  temp = table.hashes[0]
  temp.each {|key, value| convToBoolean(temp, key,value) }
  temp = temp.to_json
  header = @objects[obj]
  header["X-Namespace"] = @users[usr]["namespace"]
  @last_response = HTTParty.put(convToURL(str),
                                body: temp,
                                headers: header)
end

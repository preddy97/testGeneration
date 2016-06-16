Given /^the following objects in a table:$/ do |table|
  temp = table.hashes
  for i in 0..temp.size-1
    objectName = temp[i]["object"]
    temp[i].delete("object")
    @objects[objectName] = temp[i]
  end
end

Given(/^@(.*) in a list:$/) do |name, table|
  @lists[name] = table.raw.transpose[0]
end

When /^(.*) chooses a random (.*) from all (.*)/ do |usr, obj, grp|
    @last_response = HTTParty.get(convToURL(grp),
                                  headers: {"X-Namespace" => @users[usr]["namespace"]})
    temp = JSON.parse(@last_response.body)
    if (temp.class.to_s=="Hash")
        @randObjID = temp["ID"]
    else
        @randObjID = temp[0]["ID"]
    end
end
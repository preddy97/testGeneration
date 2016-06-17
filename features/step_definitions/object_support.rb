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
        actual = Array.new(1)
        actual[0] = temp
    else
        actual = temp
    end

    isSystem = true
    index = 0
    while (isSystem == true)
        if (hasSystem(temp[index]))
            index=index+1
        else
            isSystem = false
            @randObjID = temp[index]["ID"]
        end
    end

    puts @randObjID
end
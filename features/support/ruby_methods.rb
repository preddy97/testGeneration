
def convToBoolean(temp, key, value)
  if value == "true"
    temp[key] = true
  elsif value == "false"
    temp[key] = false
  end
end

def checkIfEqual(actual, expected)
  for k in 0..expected.size-1
    k1 = expected.keys[k]
    if @objects[expected[k1]]!=nil
      if !checkIfEqual(actual[k1],@objects[expected[k1]])
        return false
      end
    elsif @lists!=nil && @lists[expected[k1]]!=nil
      if !(actual[k1].to_s.eql? @lists[expected[k1]].to_s)
        return false
      end
    elsif actual[k1].class.to_s=="Array" && actual[k1].size==1
      if !(actual[k1][0].to_s.eql? expected[k1].to_s)
        return false
      end
    elsif !(actual[k1].to_s.eql? expected[k1].to_s)
      return false
    end
  end
  return true
end

def convToURL (str)
  temp = str.split(/\sin\sthe\s|\sof\sthe\s|\sof\s|\sin\s/)
  temp.push(@restURL)
  temp = temp.reverse
  return temp.join('/')
end

def randObjURL (str)
    temp = str.split(/\sin\sthe\s|\sof\sthe\s|\sof\s|\sin\s/)
    temp.push(@restURL)
    temp = temp.reverse
    temp.push(@randObjID)
    return temp.join('/')
end

def checkForAll (actual, expected)
  for i in 0..expected.size-1
    found = false
    for j in 0..actual.size-1
      if (checkIfEqual(actual[j],expected[i])==true)
        found = true
        break
      end
    end
    assert found
  end
end

def getActual (type)
  if type=="body"
    temp = JSON.parse(@last_response.body)
  elsif type=="header"
    t = @last_response.headers.inspect
    t = t.gsub("=>",":")
    temp = JSON.parse(t)
  end

  if (temp.class.to_s=="Hash")
    actual = Array.new(1)
    actual[0] = temp
  else
    actual = temp
  end

  return actual
end

def hasSystem(hash)
    for i in 0..len(hash["associatedTags"])
        if hash["associatedTags"][i]=="namespace=system"
            return true
        end
    end
    return false
end

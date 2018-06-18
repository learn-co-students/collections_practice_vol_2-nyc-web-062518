# your code goes here
def begins_with_r(array)
  array.all? do |element|
    element.start_with?("r")
  end
end

def contain_a(array)
  newArr = []
  array.each do |element|
    if element.include?("a")
      newArr << element
    end
  end
  newArr
end

def first_wa(array)
  array.find {|element| element[0] == "w" && element[1] == "a"}
end

def remove_non_strings(array)
  newArr = []
  array.map do |element|
    if element.instance_of?(String)
      newArr << element
    end
  end
  newArr
end
    
def count_elements(array)
  array.uniq.each do |element|
    count = 0
    array.each do |e|
      if e == element
        count += 1
      end
    end
    #the :count of the element will be set to the variable count
    element[:count] = count
  end
end


def merge_data(keys, data)
  merge = []
  keys.each do |element|
    data.first.map do |key, value|
      if element.values[0] == key
        merge << element.merge(value)
      end
    end
  end
  merge
end

def find_cool(array)
  array.select do |element|
    element.any? {|name, temp| temp == "cool"}
  end
end

def organize_schools(array)
  ans = {}
  array.each do |k, v|
    if ans[v[:location]] == nil
      ans[v[:location]] = []
      ans[v[:location]] << k
    else
      ans[v[:location]] << k
    end
  end
  ans
end



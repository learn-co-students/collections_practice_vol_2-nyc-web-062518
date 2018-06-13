require "pry"
# your code goes here
def begins_with_r(array)
  array.all? do |word|
    word[0] == "r"
  end
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if do |object|
    !object.is_a? String
  end
end

def count_elements(array)
  list = []
  array.each do |item|
    freq = array.count(item)
    #binding.pry
    item[:count] = freq
    if !list.any?{|i| i[:name] == item[:name]}
    list << item
    end
  end
  return list
end

def merge_data(keys, data)
  array = []
  keys.each do |hash|
    name = hash[:first_name]
    data.each do |h|

      array << hash.merge(h[name])
      end
    end
    array
  end

  def find_cool(array)
    new_array = []
    array.each do |hash|
      if hash[:temperature] == "cool"
        new_array << hash
    end
  end
    new_array
  end

def organize_schools(array)
  big_apple = []
  frisco = []
  chi_town = []
    array.each do |key, value|
      city = value[:location]
      if city == "NYC"
        big_apple << key
      elsif city == "SF"
        frisco << key
      elsif city == "Chicago"
        chi_town << key
      end
    end
    final_hash = { "NYC" => big_apple, "SF" => frisco, "Chicago" => chi_town}
    final_hash
end

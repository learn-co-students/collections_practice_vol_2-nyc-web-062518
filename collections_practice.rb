def begins_with_r(array)
  array.all? do |word|
    word[0] == "r"
  end
end

def contain_a(array)
  array.select do |word|
    word.include?('a')
  end
end

def first_wa(array)
  array.detect do |word|
    word[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.select do |word|
    word.is_a?(String)
  end
end

def count_elements(array)
  new_array = []
  array.uniq.each do |word|
    word[:count] = array.count(word)
    new_array << word
  end
end

def merge_data(keys, data)
  keys.each do |key|
    data.each do |datum|
      key.merge!(datum[key[:first_name]])
    end
  end
end

def find_cool(array)
  array.find_all do |temp|
    temp.has_value?("cool")
  end
end

def organize_schools(school)
  city_hash = {}
  school.collect do |a, b|
    city_hash[b[:location]] = []
  end
    city_hash.each do |a, b|
      schools.each do |c, d|
        if a == d[:location]
        then b << c
      end
    end
  end
end

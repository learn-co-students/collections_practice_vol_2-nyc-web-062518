def begins_with_r(array)
  array.all? do |string|
    string.start_with?("r")
  end
end


def contain_a(array)
  array.find_all { |string| string.include?("a") }
end


def first_wa(array)
  array.find do |element|
    element.class == String && element.start_with?("wa")
  end
end


def remove_non_strings(array)
  array.reject { |element| element.class != String }
end


def count_elements(array)
  counter = {}
  counted_array = []
  array.uniq.each do |element|
    nested_hash = element
    nested_hash[:count] = array.count(element)
    counted_array << nested_hash
  end
  counted_array
end


def merge_data(keys, data)
  data_array = []
  merged_data = []
  counter = 0
  data.each do |index|
    index.each_pair do |key, value|
      data_array << value
    end
  end
  keys.each do |index|
    merged_data << data_array[counter].merge(index)
    counter += 1
  end
  merged_data
end


def find_cool(array)
  array.find_all do |person|
    person.has_value?("cool")
  end
end


def organize_schools(schools)
  school_hash = {}
  schools.each_pair do |key, value|
    value.each_value do |value|
      if school_hash.has_key?(value)
        school_hash[value] << key
      else
        school_hash[value] = []
        school_hash[value] << key
      end
    end
  end
  school_hash
end

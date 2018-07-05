# your code goes here
require 'pry'

def begins_with_r(arr)
  arr.all? { |word| word.start_with?("r") }
end

def contain_a(arr)
  array_of_awords = []
  arr.each do |word|
    if word.include?("a")
      array_of_awords << word
    end
  end
  array_of_awords
end

def first_wa(arr)
  arr.find { |word| word.is_a?(String) && word.start_with?("wa") }
end


def remove_non_strings(arr)
  arr_two = []
  arr.each do |word|
    if word.class == String
      arr_two << word
    end
  end
  arr_two
end

def count_elements(arr)
  counts = 0 
  arr.each do |word|
    counts[word] += 1
  end

end

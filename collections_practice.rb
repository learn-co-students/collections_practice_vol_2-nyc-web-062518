def first_wa(array)
  array.find { |element| element[0..1] == "wa" }
end

def count_elements(array)
  counts = []
  until array == []
    temp = array.select {|element| element != array[0]}
    count = array.length - temp.length
    array[0][:count] = count
    counts.push(array[0])
    array = temp
  end
  counts
end


def begins_with_r(array)
  !array.any? do |element|
    element[0] != 'r'
  end
end

def contain_a(array)
  array.select do |element|
    element.include?('a')
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    !element.is_a?(String)
  end
end

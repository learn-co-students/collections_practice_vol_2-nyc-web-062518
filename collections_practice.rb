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

def merge_data(first, second)
  merged = []
  second.each do | element |
    element.each do | key, value |
      keyOfSecond = key
      valueOfSecond = value
      first.each do | element |
        element.each do | key, value |
          keyOfFirst = key
          valueOfFirst = value
          if valueOfFirst == keyOfSecond
            valueOfSecond[keyOfFirst] = keyOfSecond
            merged.push(valueOfSecond)
          end
        end
      end
    end
  end
  merged
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

second =
  [
         {
           "blake" => {
              :awesomeness => 10,
                   :height => "74",
                :last_name => "johnson"
          },
          "ashley" => {
              :awesomeness => 9,
                   :height => 60,
                :last_name => "dubs"
          }
      }
  ]


first = [
       {
        :first_name => "blake"
    },
       {
        :first_name => "ashley"
    }
]

merge_data(first, second)

# your code goes here
def begins_with_r(toolsArray)
  counter = 0
  toolsArray.each do |tool|
    if tool.start_with?("r")
      counter = counter + 1
    end
  end
  if counter == toolsArray.length
    return true
  else
    return false
  end
end

def contain_a(elementsArray)
  elementsContain_a = []
  elementsArray.each do |element|
    if element.include? "a"
      elementsContain_a.push(element)
    end
  end
  return elementsContain_a
end

def first_wa(elementsArray)
  elementsArray.each do |element|
    if element.is_a? String
      if element.start_with?("wa")
        return element
      end
    end
  end
end

def remove_non_strings(elementsArray)
  elementsOfStrings = []
  elementsArray.each do |element|
    if element.is_a? String
      elementsOfStrings.push(element)
    end
  end
  return elementsOfStrings
end

def count_elements(arrayOfHashes)
  arrayOfValues = []
  count = 0
  arrayOfElements_Counts = []
  arrayOfHashes.each do |element|
    element.each do |key, value|
      arrayOfValues.push(value)
    end
  end
  arrayOfValues.each do |element|
    count = arrayOfValues.count(element)
    arrayOfElements_Counts.push({:name => element, :count => count})
  end
  return arrayOfElements_Counts.uniq
end

def merge_data(arrayOfData1, arrayOfData2)
  mergedDataArray = []
  arrayOfData1.each do |hash1|
    hash1.each do |key, value|
      arrayOfData2.each do |hash2|
        hash2.each do |name, hashData|
          if value == name
            mergedDataArray.push({:first_name=>value}.merge(hashData))
          end
        end
      end
    end
  end
  return mergedDataArray
end

def find_cool(arrayOfHashes)
  arrayOfCoolHashes = []
  arrayOfHashes.each do |hashes|
    if hashes[:temperature] == "cool"
      arrayOfCoolHashes.push(hashes)
    end
  end
  return arrayOfCoolHashes
end

def organize_schools(arrayOfSchools)
  # Identfies & Stores Unique Locations of Schools
  locations = []
  uniqueLocations = []
  arrayOfSchools.each do |school, location|
    locations.push(location[:location])
  end
  uniqueLocations = locations.uniq

  # Creates a Multidimensional Array to store groups of schools sharing a common location
  multiDimensionalArray = Array.new(uniqueLocations.length){Array.new(0)}
  groupOfSchools = {}

  # Iterates through arrayOfSchools & when location matches a unique location,
  # schools are stored in an array within the multiDimensionalArray.
  # Stores array of schools as a value to the uniqueLocation key, within hash groupOfSchools 
  (uniqueLocations.length).times do |counter|
    arrayOfSchools.each do |school, location|
      if location[:location] == uniqueLocations[counter]
        multiDimensionalArray[counter].push(school)
      end
      groupOfSchools[uniqueLocations[counter]] = multiDimensionalArray[counter]
    end
  end
  return groupOfSchools
end

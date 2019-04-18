def begins_with_r(array)
  t = true
  array.each do |element|
    t = false if element[0] != "r"
  end
  t
end

def contain_a(array)
  new_array = []
  array.each do |element|
    if element.include?("a")
      new_array << element
    end
  end
  new_array
end

def first_wa(array)
  wa = nil
  array.each do |element|
    if element[0..1].include?("wa")
      wa = element
      break
    end
  end
  wa
end

def remove_non_strings(array)
  new_array = []
  array.each do |element|
    new_array << element if element.is_a?(String)
  end
  new_array
end

def count_elements(array)
  array.each do |hash|
    hash[:count] = 0
    name = hash[:name]
    array.each do |new_hash|
      if new_hash[:name] == name
        hash[:count] += 1
      end
    end
  end
  array.uniq
end

def merge_data(array_one, array_two)
  array_two[0].map do |name, hash|
    new_hash = {}
    array_one.each do |new_hash_two|
      if new_hash_two[:first_name] == name
        new_hash = hash.merge(new_hash_two)
      end
    end
    new_hash
  end
end

def find_cool(array)
  new_array = []
  array.each do |element|
    new_array << element if element[:temperature] == "cool"
  end
  new_array
end

def organize_schools(schools)
  schools_hash = {}
  schools.each do |school, location_hash|
    location = location_hash[:location]
    if schools_hash[location]
      schools_hash[location] << school
    else
      schools_hash[location] = []
      schools_hash[location] << school
    end
  end
  schools_hash
end

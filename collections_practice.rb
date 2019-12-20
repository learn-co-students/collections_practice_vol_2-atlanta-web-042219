def begins_with_r(array)
  r = nil
  array.each do |element|
    if element.start_with?("r") == true
      r = true
    else r = false
    end
  end
  r
end

def contain_a(array)
  array.map {|e| e.include?("a") ? e : nil}.compact
end

def first_wa(array)
  first = nil
  array.each do |e|
    if e.to_s.start_with?("wa")
      first = e
      break
    end
  end
  first
end

def remove_non_strings(array)
  array.delete_if {|e| !e.is_a?(String)}
end

def count_elements(array)
  new_array = array.each do |hash|
  hash[:count] = array.count(hash)
  end
  array.uniq {|hash| hash[:name]}
end

def merge_data(keys, data)
  merged_array = []
  i = 0
  data.each do |hash|
    hash.each do |k, v|
      merged_array << v.merge(keys[i])
      i += 1
    end
  end
  merged_array
end

def find_cool(cool)
  cool.select {|thing| thing.has_value?("cool")}
end

def organize_schools(schools)
  organized_data = Hash.new {|hash, key| hash[key] = []}
  schools.each do |k, v|
    organized_data[v[:location]] << k
  end
  organized_data.each do |k, v|
    v.flatten
  end
  organized_data
end

# your code goes here
require "pry"

def begins_with_r(arr)
  arr.each do |word|
    if word.start_with?('r') == false
      return false
    end
  end
  true
end

def contain_a(arr)
  output = []
  
  arr.each do |word|
    if word.include?("a")
      output << word
    end
  end
  output
end

def first_wa(arr)
  arr.each do |word|
    if word.to_s.start_with?("wa")
      return word
    end
  end
end

def remove_non_strings(arr)
  arr.delete_if do |item|
    item.class != String
  end
end

def count_elements(arr)
  arr.uniq.each do |item|
    item[:count] = arr.count(item)
    item
  end
end

def merge_data(keys, data)
  output = []
  keys.each do |persons|
    data.first.each do |k, v|
      if persons.values[0] == k
        output << persons.merge(v)
      end
    end
  end
  output
end

def find_cool(arr)
  output = []
  
  arr.each do |item|
    if item[:temperature] == 'cool'
    output << item
  end
  end
  output
end

def organize_schools(hash)
  output = {}
  hash.each do |school|
    output[school[1].values[0]] = []
  end
  output.each do |school, data|
    hash.each do |k, v|
      if school == v[:location]
        data << k
      end
    end
  end
  output
end
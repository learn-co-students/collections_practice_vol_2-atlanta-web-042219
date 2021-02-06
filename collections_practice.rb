require 'pry'

# your code goes here
def begins_with_r(arr)
  arr.all? { |word| word[0] == 'r' }
end

def contain_a(arr)
  arr.find_all { |item| item.include? 'a' }
end

def first_wa(arr)
  arr.each { |item| return if item[0, 1] == 'wa' }
end

def first_wa(arr)
  arr.each { |item| return item if item[0..1] == 'wa' }
end

def remove_non_strings(arr)
  new_arr = []
  arr.find { |item| new_arr.push(item) if item.instance_of?(String) }
  new_arr
end

def count_elements(arr)
  arr.group_by(&:itself).map { |k, v| k.merge(count: v.length) }

  # for each instance of  the occurance of somrthing in hash iterate count
end

def merge_data(arr1, arr2)
  arr1.concat(arr2)
end

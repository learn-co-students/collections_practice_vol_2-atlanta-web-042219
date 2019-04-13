def begins_with_r(array)
  array.all?{|word| word.to_s.start_with?("r")}
end

def contain_a(array)
  array.select{|word| word.to_s.include?("a")}
end

def first_wa(array)
  array.find{|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.delete_if{|word| word.class != String}
end

def count_elements(array)
  names = array.uniq
    names.map do |name|
    name.merge({ :count => array.count { |item| item[:name] == name[:name] }})
    end
end

def merge_data(keys, data)
  keys.map do |key|
    key.merge(data[0][key[:first_name]].to_h)
  end
end

def find_cool(arry)
  arry.select {|x| x[:temperature] == "cool"}
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school, hash|
    hash.each do |location, city|
      if organized_schools.include?(city) == false
        organized_schools[city] = [school]
      else
        organized_schools[city] << school
      end
    end
  end
  organized_schools
end

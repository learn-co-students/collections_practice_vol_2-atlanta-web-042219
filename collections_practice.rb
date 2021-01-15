require 'pry'

def begins_with_r(array)
    array.all? do |item|
        if item.start_with?("r")
            true
        else
            false
        end
    end
end

def contain_a(array)
    array.select do |item|
        if item.include?("a")
            item
        end
    end
end

def first_wa(array)
    first_wa = nil
    array.each do |item|
        if item.match(/wa/)
            first_wa = item
            break
        end
    end
    first_wa
end

def remove_non_strings(array)
    array.select do |item|
        if item.class == String
            item
        end
    end
end

def count_elements(array)
    array.each do |original_hash|
        original_hash[:count] = 0
        name = original_hash[:name]
        array.each do |hash|
          if hash[:name] == name
            original_hash[:count] += 1
          end
        end
      end.uniq
end

# def merge_data(keys, data)
#     merge = []

#     keys.each do |key, value|
#         merge << key
#     end

#     # binding.pry

#     data.each do |key, value|
#         key.each do |info, spec|
#             merge << spec
#         end
#     end

#     merge.flatten
# end

def merge_data(arr1, arr2)
    arr2[0].map do |name, prop_hash|
      new_prop_hash = {}
      arr1.each do |new_attr_hash|
        if new_attr_hash[:first_name] == name
          new_prop_hash = prop_hash.merge(new_attr_hash)
        end
      end
      new_prop_hash
    end
  end

def find_cool(hash)
    cool = []

    hash.each do |key, value|
        cool << key if key[:temperature] == "cool"
    end

    cool
end

def organize_schools(schools)
    organized_schools = {}
    schools.each do |name, location_hash|
      location = location_hash[:location]
      if organized_schools[location]
        organized_schools[location] << name
      else
        organized_schools[location] = []
        organized_schools[location] << name
      end
    end
    organized_schools
end
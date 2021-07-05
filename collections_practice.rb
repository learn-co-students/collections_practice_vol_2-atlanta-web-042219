# your code goes here
def begins_with_r(array)
  r_element = nil
  array.each do |element|
    if element[0]=='r'
      r_element=true
    else
      r_element=false
    end
  end
  r_element
end

  def contain_a(array)
    e_array=[]
    array.map do |element|
      if element.include?('a')
        e_array << element
      end
    end
  e_array
  end

  def first_wa(array)
    wa_element =[]
    array.map do |element|
      if element.to_s.start_with?('wa')
        wa_element << element
      end
    end
    wa_element[0]
  end

  def remove_non_strings(array)
    array.delete_if { |obj| !(obj.is_a? String)}
    array
  end
          # def remove_non_strings(array)
          #   array.select do |element|
          #     element.is_a? String
          #   end
          # end

  def count_elements(array)
    new_array = Array.new
  array.uniq.select do |element|
    element[:count] = array.count(element)
    new_array << element
  end
  new_array
  end

  def merge_data(keys, data)
  new_array = []
  i = 0
  data.each do |hash|
    hash.each do |name, value_hash|
      new_array << value_hash.merge(keys[i])
      i += 1
      end
    end
  new_array
  end

  def find_cool(cool)
    cool.select {|i| i.any? {|k,v| v == "cool"}}
  end

  # def find_cool(hash)
  #
  #   hash.select do |person, temperature|
  #      person[:temperature] == "cool"
  #   end
  #
  # end





# def organize_schools(schools)
#     locations_hash = {}
#     schools.collect {|k,v| locations_hash[v[:location]] = []}
#     locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
# end

def organize_schools(hash)
  locations = {}
  hash.values.each { |location| locations[location.values[0]] = [] }
  hash.each { |school, location| locations[location.values[0]] << school }
  locations
end

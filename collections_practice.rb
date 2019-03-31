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

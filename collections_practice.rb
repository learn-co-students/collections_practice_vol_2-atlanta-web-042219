def begins_with_r(arr)
	arr.each {|ele|
		return false if ele[0] != "r"
	}
	true
end

def contain_a(arr)
	a_ray=[]
	arr.each {|ele|
		a_ray << ele if ele.downcase.include?("a")
	}
	a_ray
end

def first_wa(arr)
	arr.each {|ele|
		return ele if ele[0..1]=="wa"
	}
end

def remove_non_strings(arr)
	new_arr=[]
	for x in 0..arr.size-1
		new_arr << arr[x] if arr[x].class == String
	end
	new_arr
end

def count_elements(arr)
	new_arr=arr.uniq

	new_arr.map {|new_hashes|
		new_hashes[:count] = arr.count {|old_hashes| old_hashes[:name] == new_hashes[:name]}
	}
	new_arr
end

def merge_data(keys, data)
	keys.map {|key_hash|
		key_hash.merge(data[0][key_hash[:first_name]])
	}
end

def find_cool(arr)
	cool_arr=[]
	arr.each {|ele|
		cool_arr << ele if ele[:temperature]=="cool"
	}
	cool_arr
end

def organize_schools(schools)
	organized={}
	schools.each {|school, hsh|
		hsh.each {|location, city|
			organized[city] ||= []
			organized[city] << school

		}
	}
	organized
end

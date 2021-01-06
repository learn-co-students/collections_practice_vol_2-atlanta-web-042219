require "pry"

# your code goes here
def begins_with_r(arr)
    arr.all?{|word| word[0] == "r"}
end

def contain_a(arr)
    arr.find_all { |item| item.include? "a"}
end 

def first_wa(arr)
    arr.each {|item| return if item[0,1] =="wa"}
end

def first_wa(arr)
	arr.each {|ele|
		return ele if ele[0..1]=="wa"
	}
end
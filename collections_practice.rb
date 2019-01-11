require "pry"

def begins_with_r(array)
  array.all? do |words|
    words[0] == "r"
  end
end
    
def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if do |word|
    word.instance_of?(String) == false
  end
end

def count_elements(array)
  array.uniq.collect do |word|
    word[:count] = array.count(word)
    word
  end
end
    
def merge_data(keys, data)
  new_array = []
  keys.each {|i| data.first.map {|k, v| if i.values[0] == k then new_array << i.merge(v) end }}
  new_array
end

def find_cool(array)
 array.select do |word|
   word.any? do |k, v|
     v == "cool"
 end
 end
end
 
 def organize_schools(schools)
  organize_schools = {}
  schools.each do |school_name, place|
    place.each do |location, city|
      if organize_schools.has_key?(city)
        organize_schools[city] << school_name
      else
        organize_schools[city] = [school_name]
      end
    end
  end
  organize_schools
end

 


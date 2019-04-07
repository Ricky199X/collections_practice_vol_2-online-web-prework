def begins_with_r(array)
  array.all? {|string| string.start_with?("r")}
end

#contain_a: return all elements that contain the letter'a'

def contain_a(array)
  array_of_a = []
  array.collect do |element|
    if element.include?("a")
      array_of_a << element
    end
  end
  array_of_a
end

#first_wa Return the first element that begins with the letters 'wa'

def first_wa(array)
  wa_elements = []
  array.collect do |element|
    if element.to_s.start_with?("wa")
      wa_elements << element
    end
  end
  wa_elements.first
end

#remove_non_strings removes anything that's not a string from the array

def remove_non_strings(array)
  array.select {|element| element.class == String }
end


#count_elements count how many times somethingappears in an array

def count_elements(array)
  counts = Hash.new(0)
  array.collect {|element| counts[element]+=1 }
    counts.collect do |hash, number|
      hash[:count] = number
    end
  counts.keys
end

def merge_data(array)
  return_hash = Hash.new
  array.each do |element|
    if element.class == Hash
      return_hash.merge(element)
    end
  end
end


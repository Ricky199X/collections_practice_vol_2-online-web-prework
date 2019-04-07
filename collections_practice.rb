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
  array.select {|element| element.class != "string" }
end
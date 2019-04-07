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
  array.each do |element|
    element.first("wa")
end
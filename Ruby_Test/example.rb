def joinor(array, delimiter=', ', word='or')
  if array.size <= 2
    array.join(" #{word} ")
  else
    last_element = array.pop
    string_of_array = array.join("#{delimiter}")
    new_string = string_of_array + "#{delimiter}" + word + ' ' + last_element.to_s
  end
end

p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"
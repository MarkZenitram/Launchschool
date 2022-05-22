def swap_name(name)
  name_array = name.split(' ')
  swapped_name = name_array[1] + ", #{name_array[0]}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
def swap_name(name)
  name_reversed = name.split(' ').reverse.join(', ')
end



p swap_name('Joe Roberts') == 'Roberts, Joe'
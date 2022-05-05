def print_in_box(text)
  puts "+" + "#{'-' * (text.size + 2)}" + "+"
  puts "| " + "#{' ' * text.size}" + " |"
  puts "| " + "#{text}" + " |"
  puts "| " + "#{' ' * text.size}" + " |"
  puts "+" + "#{'-' * (text.size + 2)}" + "+"
end

print_in_box('To boldly go where no one has gone before.')



print_in_box('')

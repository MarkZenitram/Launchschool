colors = 'blue pink yellow orange'
colors.split(" ").each do |w|
  if w == "yellow"
    puts "true"
  else puts "false"
  end
end
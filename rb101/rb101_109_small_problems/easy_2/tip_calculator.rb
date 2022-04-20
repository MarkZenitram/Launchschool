puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percent = gets.chomp.to_f / 100
tip_amount = tip_percent * bill

puts "The tip is $#{bill * tip_percent}"
puts "The total is $#{tip_amount + bill}"
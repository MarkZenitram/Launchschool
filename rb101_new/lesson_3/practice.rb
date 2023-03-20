puts "What is the bill?"
bill = gets.chomp

puts "What is the tip percentage?"
tip = gets.chomp

tip_percent = tip.to_f/100

tip_total = (bill.to_f * tip_percent).round(2)
bill_total = tip_total + bill.to_f

puts "The tip is $#{format('%.2f',tip_total)}"
puts "The total bill is $#{format('%.2f',bill_total)}"
puts "Please write a word or multiple words:"
words = gets.chomp

total_chars = words.delete(" ").size

puts "There are #{total_chars} characters in \"#{words}\"."
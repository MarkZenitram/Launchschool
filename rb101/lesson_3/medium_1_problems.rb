output = "The Flintstones Rock!"
counter = 0

puts output 

loop do
  puts output.prepend(" ")
  counter += 1
  break if counter == 10
end


10.times { |number| puts (" " * number) + "The Flintstones Rock!" }
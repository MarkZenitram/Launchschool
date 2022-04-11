my_string = "The Flintstones Rock!"
counter = 0
asci_string = " "


puts my_string

loop do
  my_string = " " + my_string
  puts my_string
  counter += 1
  break if counter == 9
end

10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

10.times { |x| puts (" " * x) + "The Flintstones Rock!"}

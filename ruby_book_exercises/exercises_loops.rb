#Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.
x = ""
while x != "STOP" do
  puts "Pick a number for me to square!"
  ans = gets.chomp.to_i
  puts ans.to_i ** 2
  puts "Try again?"
  x = gets.chomp.upcaseAlr
end


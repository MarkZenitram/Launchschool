# Write a method that takes TWO arguments
# One is a STRING
# One is a POSITIVE integer
#The method will then print that string as many times as the integer indicates

def repeat_me (some_string, positive_int)
  if positive_int > 0
  (positive_int).times { p some_string}
  end
end

repeat_me(6, 5)
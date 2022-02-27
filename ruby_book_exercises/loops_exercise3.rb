#Write a method that counts down to zero using recursion
def count_to_zero(start)
  puts start.to_int
  if start > 0
    count_to_zero(start - 1)
  end
end


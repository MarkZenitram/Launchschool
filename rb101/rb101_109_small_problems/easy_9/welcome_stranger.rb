def greetings(array, hash)
  puts "Hello, #{array[0]} #{array[1]} #{array[2]}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end




greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.
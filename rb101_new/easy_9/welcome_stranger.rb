def greetings(name, job)
  puts "Hello #{name.join(' ')}! " + "Nice to have a #{job[:title]} #{job[:occupation]} around."
end


greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> "Hello, John Q Doe! Nice to have a Master Plumber around."
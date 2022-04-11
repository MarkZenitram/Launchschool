flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |v|
  v[0,3]
end

p flintstones

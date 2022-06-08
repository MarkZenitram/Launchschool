hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}


vowels = 'aeiou'
hsh.each do |key, value|
  value.each do |characters|
    characters.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end

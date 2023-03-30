def crunch(str)
  split_str = str.split(' ')
  counter = 0
  new_str = split_str.map do |word|
    word.chars.uniq.join
  end
  p new_str.join(' ')
end


crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
def remove_vowels(string_array)
  index = 0
  counter = 0
  vowels = 'aeiouAEIOU'
  no_vowel_array = []

  if string_array.size == 1
    no_vowel_array << string_array[index].delete(vowels)
  else
    loop do
      no_vowel_array << string_array[index].delete(vowels)
      index += 1
      break if index == string_array.size
    end
  end
  p no_vowel_array
end

def rem_vow(strings)
  strings.map { |string| string.delete('aeiouAEIOU') }
end




#remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
#remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


p rem_vow(%w(ART iS A drAg))
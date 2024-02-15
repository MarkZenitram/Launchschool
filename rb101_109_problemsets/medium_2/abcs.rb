BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)


def block_word?(word)
  characters = word.upcase.chars
  BLOCKS.each do |block|
    if characters.include?(BLOCKS[0]) && characters.include(BLOCKS[1])
      return false
    else
      return true
    end
  end
end



p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
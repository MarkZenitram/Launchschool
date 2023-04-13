BLOCKS = %w(bo xk dq na gt re fs jw hu vi ly zm)

def block_word?(word)
  hsh = {}
  word.chars do |char|
    BLOCKS.each_with_index do |block, index|
      if block.include?(char.downcase) && hsh[index] == nil
        hsh[index] = 1
      elsif block.include?(char.downcase) && hsh[index] == 1
        hsh[index] += 1
      end
    end
  end
  p !hsh.values.include?(2)
end

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true


REPLACEMENTS = 
{   ADJ:    %w(quick lazy sleepy ugly),
    NOUN:   %w(fox dog head leg),
    VERB:   %w(jumps lifts bites licks),
    ADVERB: %w(easily lazily noisily excitedly) }

text = File.read('madlibs.txt')

replaced_text = []

text.split.map do |word|
  if REPLACEMENTS.keys.include?(word.to_sym)
    replaced_text << REPLACEMENTS[word.to_sym].sample
  elsif REPLACEMENTS.keys.include?(word[0..-2].to_sym)
    replaced_text << REPLACEMENTS[word[0..-2].to_sym].sample
  else
    replaced_text << word
  end
end

p replaced_text.join(' ')

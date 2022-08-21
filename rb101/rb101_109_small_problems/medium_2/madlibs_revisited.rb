ADJECTIVES = %w{long soft delicate small}
NOUNS = %w{bed perch hut tower}
ADVERBS = %w{rapidly slowly happily enthusiastically}
VERBS = %w{ran trotted sprinted jumped}

text = File.read('paragraph.txt')

puts format(text, noun: NOUNS.sample,
                  verb: VERBS.sample,
                  adverb: ADVERBS.sample,
                  adjective: ADJECTIVES.sample)
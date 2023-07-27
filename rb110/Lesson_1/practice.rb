#Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections like this 8-4-4-4-12 and represented as a string.
HEXADECIMAL_CHARS = ('a'..'f').to_a + ('1'..'9').to_a

def uuid_creator()
  uuid = ''
  32.times {|_| uuid << HEXADECIMAL_CHARS.sample}
  uuid
end

def uuid_hypenator(id)
  id.insert(8, '-')
  id.insert(13, '-')
  id.insert(18, '-')
  id.insert(23, '-')
end

p uuid_hypenator(uuid_creator)
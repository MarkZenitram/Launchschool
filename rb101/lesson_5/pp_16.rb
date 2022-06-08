HEX_SAMPLER = %w[a b c d e f 1 2 3 4 5 6 7 8 9 0]

def uuid()
  empty_uuid = ''
  counter = 0

  loop do
    empty_uuid << HEX_SAMPLER.sample
    counter += 1
    break if counter == 32
  end
  empty_uuid.insert(8, '-')
  empty_uuid.insert(13, '-')
  empty_uuid.insert(18, '-')
  empty_uuid.insert(23, '-')
  p empty_uuid
end

uuid



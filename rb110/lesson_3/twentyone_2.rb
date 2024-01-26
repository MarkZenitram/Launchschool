RANK = %w[2 3 4 5 6 7 8 9 10 J Q K A].freeze
SUIT = %w[H D C S].freeze

DECK = RANK.each_with_object([]) do |rank, arr|
  SUIT.each do |suit|
    arr << [rank, suit]
  end
end

def prompt(msg)
  puts "==> #{msg}"
end

def display_hands(player, dealer)
  prompt "Dealer currently has #{remove_suit(dealer).join(' and ')} for a total of #{total(dealer)}"
  prompt "Player currently has #{remove_suit(player).join(' and ')} for a total of #{total(player)}"
end

def deal_a_card(_)
  card_dealt = DECK.sample
  DECK.delete(card_dealt)
  card_dealt
end

def remove_suit(current_hand)
  current_hand.map { |card| card[0] }
end

def total_jqks_drawn(hand)
  jqk_total = remove_suit(hand).count { |suit| suit == 'J' }
  jqk_total += remove_suit(hand).count { |suit| suit == 'Q' }
  jqk_total += remove_suit(hand).count { |suit| suit == 'K' }
end

def total_as_drawn(hand)
  remove_suit(hand).count { |suit| suit == 'A' }
end

def total(current_hand)
  total = 0
  total_with_low_a = 0
  total_with_high_a = 0
  total_jqk = total_jqks_drawn(current_hand)
  total_a = total_as_drawn(current_hand) * 11

  # total without JQK and A
  remove_suit(current_hand).each do |cost|
    total += cost.to_i
  end

  total = (total_jqk * 10) + total + total_a
  # total with as all being 1s
  #total_with_low_a += total + total_a + (total_jqk * 10)

  # total with as all being 11
  #total_with_high_a += total + (total_a * 11) + (total_jqk * 10)

  #if total_with_high_a <= 21 && total_with_high_a > total_with_low_a
  #  total_with_high_a
  #else
  #  total_with_low_a
  #end
  if total > 21 && total_as_drawn(current_hand) >= 1
    total = total - (10 * total_as_drawn(current_hand))
  else
    total
  end
end

def determine_winner(player, dealer)
  if total(dealer) > 21 || (total(player) > total(dealer) && total(player) <= 21)
    'Player'
  elsif total(player) > 21 || (total(dealer) > total(player) && total(dealer) <= 21)
    'Dealer'
  else
    'Tie'
  end
end

def busted?(hand)
  total(hand) > 21
end

player_hand = []
dealer_hand = []

prompt "Let's play Twenty-One"
prompt 'Dealer deals each player cards'

# Both players dealt 2 cards each
2.times { |_| player_hand << deal_a_card(DECK) }
2.times { |_| dealer_hand << deal_a_card(DECK) }
prompt "Dealer currently has #{dealer_hand[0][0]} and unknown card"
prompt "Player currently has #{remove_suit(player_hand).join(' and ')} for a total of #{total(player_hand)}"

loop do
  puts ''
  answer = ''

  loop do
    break if total(player_hand) == 21

    prompt 'Hit or stay?'
    answer = gets.chomp
    if total(player_hand) == 21
      break
    elsif answer.downcase.start_with?('h')
      prompt 'Dealer deals you one card'
      player_hand << deal_a_card(DECK)
      prompt "Dealer currently has #{dealer_hand[0][0]} and unknown card"
      prompt "Player currently has #{remove_suit(player_hand).join(' and ')} for a total of #{total(player_hand)}"
      break if total(player_hand) > 21 || busted?(player_hand)
    elsif answer.downcase.start_with?('s')
      break
    else
      prompt 'Invalid answer. Please select yes or no.'
    end
  end

  break if busted?(player_hand)

  loop do
    break unless total(dealer_hand) < 17 && total(dealer_hand) < total(player_hand)
      prompt 'Dealer draws a card'
      dealer_hand << deal_a_card(DECK)
      display_hands(player_hand, dealer_hand)
      break if busted?(dealer_hand) || total(dealer_hand) > total(player_hand)
  end
  
  break if total(player_hand) == 21 || busted?(player_hand) || answer.downcase.start_with?('s')
end

prompt 'Finals Hands:'
display_hands(player_hand, dealer_hand)

case determine_winner(player_hand,dealer_hand)
when 'Player'
  prompt 'You win!'
when 'Dealer'
  prompt 'Dealer wins, better luck next time'
else
  prompt 'Tie game!'
end





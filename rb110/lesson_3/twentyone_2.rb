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
  prompt "Player currently has #{remove_suit(player).join(' and ')} for a total of #{total(player)}\n "
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
  total_jqk = total_jqks_drawn(current_hand)
  total_a = total_as_drawn(current_hand) * 11

  # total without JQK and A
  remove_suit(current_hand).each do |cost|
    total += cost.to_i
  end

  total = (total_jqk * 10) + total + total_a

  if total > 21 && total_as_drawn(current_hand) >= 1
    total -= (10 * total_as_drawn(current_hand))
  else
    total
  end
end

def determine_winner(player, dealer)
  if dealer > 21 || (player > dealer && player <= 21)
    'Player'
  elsif player > 21 || (dealer > player && dealer <= 21)
    'Dealer'
  else
    'Tie'
  end
end

def display_winner(winner)
  case winner
  when 'Player'
    prompt 'You win!'
  when 'Dealer'
    prompt 'Dealer wins, better luck next time'
  else
    prompt 'Tie game!'
  end
end

def busted?(hand)
  hand > 21
end

def play_again?
  puts "\n "
  prompt 'Would you like to play again? (y or n)'
  answer = gets.chomp
  answer.downcase.start_with?('y')
end


prompt "Let's play Twenty-One"
prompt 'Dealer deals each player cards'

loop do
  player_hand = []
  dealer_hand = []
  2.times { |_| player_hand << deal_a_card(DECK) }
  2.times { |_| dealer_hand << deal_a_card(DECK) }
  player_total = total(player_hand)
  dealer_total = total(dealer_hand)
  prompt "Dealer currently has #{dealer_hand[0][0]} and unknown card"
  prompt "Player currently has #{remove_suit(player_hand).join(' and ')} for a total of #{player_total}"
  loop do
    puts ''
    answer = ''

    loop do
      break if player_total == 21

      prompt 'Hit or stay?'
      answer = gets.chomp
      if answer.downcase.start_with?('h')
        prompt 'Dealer deals you one card'
        player_hand << deal_a_card(DECK)
        player_total = total(player_hand)
        prompt "Dealer currently has #{dealer_hand[0][0]} and unknown card"
        prompt "Player currently has #{remove_suit(player_hand).join(' and ')} for a total of #{player_total}"
        break if player_total > 21 || busted?(player_total)
      elsif answer.downcase.start_with?('s')
        break
      else
        prompt 'Invalid answer. Please select yes or no.'
      end
    end

    break if busted?(player_total)

    loop do
      break unless dealer_total < 17 && dealer_total < player_total

      prompt 'Dealer draws a card'
      dealer_hand << deal_a_card(DECK)
      dealer_total = total(dealer_hand)
      display_hands(player_hand, dealer_hand)
      break if busted?(dealer_total) || dealer_total > player_total
    end

    break if player_total == 21 || busted?(player_total) || answer.downcase.start_with?('s')
  end
  prompt "Finals Hands:"
  display_hands(player_hand, dealer_hand)
  display_winner(determine_winner(player_total, dealer_total))

  break unless play_again?
end

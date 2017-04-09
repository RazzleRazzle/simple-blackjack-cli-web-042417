def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def win_game(card_total)
  if card_total == 21
  puts "Congratulations, you have Blackjack!"
end
end

#code #initial_round here
def initial_round
  card_1 = deal_card
  card_2 = deal_card
  first_hand = card_1 + card_2
  display_card_total(first_hand)
  return first_hand
end


def hit?(card_total)
  prompt_user
  move = get_user_input

  if move == 'h'
    card_3 = deal_card
    return card_total + card_3
  else
    return card_total
  end
end

def invalid_command
  move = get_user_input
  if move != 'h' && move != 's'
    puts "Please enter a valid command"
  end
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
player_hand = initial_round
until player_hand >= 21
    player_hand = hit?(player_hand)
    display_card_total(player_hand)
    win_game(player_hand)
  end
  if player_hand > 21
  end_game(player_hand)
  end
end

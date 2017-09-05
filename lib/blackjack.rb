def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = Random.new
  return card.rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  user_input = gets.chomp
  return user_input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  exit
  # code #end_game here
end

def initial_round
  # code #initial_round here
  card_total = 0
  2.times do
    card = deal_card
    card_total += card
  end
  return card_total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  player_input = get_user_input
  if player_input == "h"
    return deal_card
  elsif player_input == "s"
    puts "You stay at #{card_total}"
    exit
  else
    invalid_command
    return nil
  end
end

def invalid_command
  # code invalid_command here
  puts "Sorry, that input is invalid."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    display_card_total(card_total)
    new_card = hit?(card_total)
    unless new_card == nil
      card_total += new_card
    end

  end
  end_game(card_total)
  # code runner here
end

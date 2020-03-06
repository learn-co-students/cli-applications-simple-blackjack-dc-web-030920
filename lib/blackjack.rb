def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
   puts "Your cards add up to #{card_total}"
end

def prompt_user
 puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp.strip
end

def end_game(number)
  # code #end_game here
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  card_one = deal_card
  card_two = deal_card
  card_total = card_one + card_two
  display_card_total(card_total) #once you have figured out the sum of your two cards, you can pass the total in as an argumnt so your phrase is displayed.
  return card_total
end

def hit?(current_card_value)
  prompt_user
  user_input = get_user_input
  while user_input != "h" && user_input != "s"
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  if user_input == "h"
    current_card_value += deal_card
  end
  return current_card_value
end

def invalid_command
  # code invalid_command here
  
  puts "Please enter a valid command"
  prompt_user
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end
#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
  display_card_total(total)
  end
  end_game(total)

end	
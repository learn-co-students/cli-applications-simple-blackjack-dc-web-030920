require "pry"
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card_value = rand(1...10)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  # code #display_card_total here
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here

sum = deal_card
sum +=deal_card
  display_card_total(sum)
  return sum
end

def hit?(total)
  # code hit? here

  prompt_user
  input = get_user_input
  if input == "h"
    total += deal_card

  elsif input == "s"
    total
  else
    invalid_command
    hit?(total)
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)

  end
end_game(total)
end

require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1..11)
  return card

end

def display_card_total(num)
  # code #display_card_total here
  puts "Your cards add up to #{num}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(num)
  # code #end_game here
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  num1 = deal_card
  num2 = deal_card
  display_card_total(num1 + num2)
  return num1 + num2
end

def hit?(num)
  # code hit? here
  prompt_user
  user = get_user_input
  if user == 's'
    return num
  elsif user == 'h'
    num += deal_card
    return num
  else
    invalid_command
    prompt_user
    user = get_user_input
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"

end

#####################################################
# get every test  to pass before coding runner below #
#####################################################
 
def runner
  # code runner here
  
  welcome
  num = initial_round
  until num > 21 do
   num = hit?(num)
  end
  display_card_total(num)
  end_game(num)

  
  
end
    

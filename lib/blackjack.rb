def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(n)
  # code #display_card_total here
  puts "Your cards add up to #{n}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  method= gets.chomp
end

def end_game(n)
  # code #end_game here	  
  if n>21
    puts "Sorry, you hit #{n}. Thanks for playing!"
  end
end

def initial_round
  # code #initial_round here
  sum= deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(user_hand)
  # code hit? here
  #puts user_hand
  prompt_user
  user_input = get_user_input

  if user_input != 'h' && user_input != 's'
    invalid_command
    prompt_user
    user_input = get_user_input
  end

  if user_input == 'h'
    new_card = deal_card
    user_hand += new_card
  elsif user_input == 's'
    user_hand
  end
  user_hand
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
    

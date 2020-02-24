def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1...11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def hit?(current_total_num)
  prompt_user
  input = get_user_input
  if input == 'h'
    current_total_num += deal_card
  elsif input == 's'
    current_total_num
  elsif input != 's' || 'h'
    invalid_and_prompt
  end
end

def invalid_command
  puts "Please enter a valid command"
end

def invalid_and_prompt
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21 
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
    

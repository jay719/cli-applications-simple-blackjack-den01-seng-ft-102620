require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
[1,2,3,4,5,6,7,8,9,10,11].sample
end

def display_card_total(sum)
  puts "Your cards add up to #{sum}"
end

def prompt_user
puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input=gets.chomp
  
end

def end_game(sum)
puts  "Sorry, you hit #{sum}. Thanks for playing!"
end

def initial_round
  sum= deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(current_card_total)
prompt_user
response1 = get_user_input

if response1 =="s"
  current_card_total
elsif response1 =="h"
  deal_card + current_card_total 
else 
  invalid_command
  #something wrong here
  
end
  
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
card_total = initial_round
until card_total>21
card_total=hit?(card_total)
display_card_total(card_total)
end
end_game(card_total)
end  

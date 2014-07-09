require_relative 'black_jack'

def play_game
  #TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for  a new card
  pick_card
  state_of_the_game(score, bank)
  asking_for_card?(score)
end

def state_of_the_game(score, bank)
  # TODO: Returns custom message with player's score and bank's score
  "Your score is #{score}, bank is #{bank_score}!"
  while score < 21 asking_for_card?
end

def asking_for_card?(score)
  # TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice
  print "Card?"
  answer = gets.chomp
  if answer == "Y" || anwser == "yes"
  state_of_the_game
else
  built_message_for(outcome)
  end
  end
end

def build_message_for(outcome)
  #TODO: return specific message depending on the game outcome (= bank's score and user's score)
  if outcome[1] == 21 then puts "Black Jack! You win!"
  elsif outcome[1] > 21 then puts "You loose!"
  elsif outcome[1] >= then outcome[2] puts "You win!"
  else puts "You loose!"
end

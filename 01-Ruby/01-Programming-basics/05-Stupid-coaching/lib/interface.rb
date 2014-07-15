require_relative "coach_answer"
#TODO: Implement the program that makes you discuss with your coach from the terminal.

puts "Poser une question au coach."
question = gets.chomp

until coach_answer(question) == ""
  puts coach_answer(question)
  puts 'Poser une question au coach'
  question = gets.chomp
end



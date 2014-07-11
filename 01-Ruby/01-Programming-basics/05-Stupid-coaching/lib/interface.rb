require_relative "coach_answer"
#TODO: Implement the program that makes you discuss with your coach from the terminal.

puts "Poser une question au coach."
answer = gest.chomp

until answer == "I am going to work right now SIR !"
  puts coach_answer(sentence)
  puts 'Poser une question au coach'
  answer = gets.chomp
end

if your_message.include?('!')
  puts coach_answer_enhanced
end

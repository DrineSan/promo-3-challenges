def coach_answer(sentence)
  # TODO: return coach answer to your_message
  if sentence.include?('?')
    "Silly question, get dressed and go to work !"
  elsif sentence == "I am going to work right now SIR !"
    ""
  else
    "I don't care son, get dressed and go to work !"
end

def coach_answer_enhanced(sentence)
  # TODO: return coach answer to your_message, with additional custom rules of yours !
  if sentence.include?('!') puts "I can feel your motivation."
end


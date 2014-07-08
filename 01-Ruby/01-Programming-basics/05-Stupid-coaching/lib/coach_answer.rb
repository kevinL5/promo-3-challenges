def coach_answer(your_message)
  # TODO: return coach answer to your_message

  return "" if your_message == "I am going to work right now SIR !"

  if your_message.include? ('?')
    answer = "Silly question, get dressed and go to work !"
  else
    answer = "I don't care son, get dressed and go to work !"
  end

  answer
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours !
end


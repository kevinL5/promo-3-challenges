require_relative "coach_answer"
#TODO: Implement the program that makes you discuss with your coach from the terminal.

puts "I'm your coach. You could ask me anything !"

my_answer = gets.chomp

until my_answer == "I am going to work right now SIR !"
  puts coach_answer(my_answer)
  puts "I'm your coach. You could ask me anything !"
  my_answer = gets.chomp
end


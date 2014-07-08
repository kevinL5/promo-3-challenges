require_relative "compute_name"

def ask_and_get(param)
  #TODO:
  #- Ask the user to write a value for param
  #- Get and return the string inputted by the user
  puts "What's your #{param} ?"
  gets.chomp.to_s

end

def name_from_terminal
  first_name = ask_and_get("first name")
  second_name = ask_and_get("middle name")
  last_name = ask_and_get("last name")

  compute_name(first_name, second_name, last_name)
end

full_name = name_from_terminal

#TODO: use string concatenation to build a custom message embedding the computed full_name

def custom_message(param2)
  "Your full name contain #{param2.length} characters !"
end

puts "Hello " + full_name + " !"
puts custom_message(full_name)

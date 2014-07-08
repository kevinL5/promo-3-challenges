# This "require_relative" line loads your own "age_in_days.rb" file. Notice the
# "_relative" suffix: the given path is relative to the location of the file
# from which "require_relative" is called
require_relative './age_in_days'

### Talking with the user ###

def question(param)
  puts "What's your #{param} of birth ?"
  gets.chomp.to_i
end

birth_year = question('year')
birth_month = question('month')
birth_day = question('day')
#############################

puts 'Computing your age (with the most complicated algorithms)........'

# TODO: This is probably where you'd like to use your brand new function!
calculated_age = age_in_days(birth_day, birth_month, birth_year)


# Finally, print user's age in days:
puts "You are #{calculated_age} days old... phew!"

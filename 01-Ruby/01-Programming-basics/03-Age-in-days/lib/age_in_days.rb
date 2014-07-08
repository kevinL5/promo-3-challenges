# This "require" line loads the contents of the 'date' file from the standard
# Ruby library, giving you access to the Date class.
require 'date'


def age_in_days(day, month, year)
  #TODO: return the age expressed in days given the day, month, and year of birth
  birth_day = Date.new(year,month,day)
  today = Date.today


  result = today - birth_day
  result.to_i
end

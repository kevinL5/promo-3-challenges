# Very dirty code to make some dirty gym...
def hop_hop_hop(number_of_exercises)

  c = 0
  until c == number_of_exercises
    c.times { print 'hop! ' }
    puts 'hop! One more time..'
    c += 1
  end
end

hop_hop_hop(6)

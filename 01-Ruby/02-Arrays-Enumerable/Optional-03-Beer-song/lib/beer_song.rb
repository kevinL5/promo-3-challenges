nb_at_start = ARGV[0].to_i

if nb_at_start == ''
  puts "Puts a argument"
else
    puts "#{nb_at_start} bottles of beer on the wall, #{nb_at_start} bottles of beer!"
    until nb_at_start == 1
      nb_at_start -= 1
      puts "Take one down, pass it around, #{nb_at_start} bottles of beer on the wall!
  end"
      puts "#{nb_at_start} bottles of beer on the wall, #{nb_at_start} bottles of beer!"
    end
    puts "Take one down, pass it around, no more bottles of beer"
end

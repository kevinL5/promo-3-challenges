require_relative "wagon_sort"

students = []

begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name

  # TODO: Add the name we just gotto the students array

  students << name.to_s if name.to_s != ""

end while name != ""

# TODO: Call `wagon_sort` method and display the sorted student list

wagon_alphabetic = wagon_sort(students)

puts "Congratulations! Your Wagon has #{students.size} students :"

first_students = wagon_alphabetic[0..students.size-2].join(', ')
final_greeting = "#{first_students} and #{wagon_alphabetic.last}."

puts final_greeting
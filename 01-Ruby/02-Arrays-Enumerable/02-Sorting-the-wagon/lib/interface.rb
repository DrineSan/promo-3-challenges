require_relative "wagon_sort"

students = []

begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name
  students << name if name != ""
  # TODO: Add the name we just gotto the students array

end while name != ""

# TODO: Call `wagon_sort` method and display the sorted student list

students_list = wagon_sort(students)
student_string = students_list[0..-2].join(", ")
last_student = students_list.last
puts "Congrats! Your Wagon has #{students.count} students: #{student_string} and #{last_student}"


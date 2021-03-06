def input_students
puts "Please enter the names of students"
puts "To finish, just hit return twice"
students = [] # Creates an empty array we can store the hash in
name = gets.chomp # Get the first name of the student
while !name.empty? # while name is not empty, repeat this code
students << {name: name, cohort: :november}
puts "Now we have #{students.count} students"
# get another name from the user
name = gets.chomp
end
students # return the array of students
end

def print_header
puts "The students of Villians Academy"
puts "-------------"
end

def print(students)
students.each_with_index do |student, index|
  if student[:name].start_with?("P") && (student[:name]).length < 12
  puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)"
end
end
end

def print_footer(students)
 puts "Overall, we have #{students.count} great students."
end

students = input_students # Instead of hardcoding students, we can get them from user input from input_students method.
#Nothing will happen until we call our methods.
print_header
print(students)
print_footer(students)

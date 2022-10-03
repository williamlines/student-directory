
# first we list the students in an array
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november}, 
  {name: "Darth Vader", cohort: :november}, 
  {name: "Nurse Ratched", cohort: :november}, 
  {name: "Michale Corleone", cohort: :november}, 
  {name: "Alex DeLarge", cohort: :november}, 
  {name: "The Wicked Witch of the West", cohort: :november}, 
  {name: "Terminator", cohort: :november}, 
  {name: "Freddy Kreuger", cohort: :november}, 
  {name: "The Joker", cohort: :november}, 
  {name: "Joffrey Baratheon", cohort: :november}, 
  {name: "Norman Bates", cohort: :november}
]
student_count = students.length
# define methods to print student names

def print_header
  puts "The students of the Villains Academy"
  puts "-----------------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)  
  puts "Overall we have #{names.count} great students."
end
# call the methods
print_header
print(students)
print_footer(students)

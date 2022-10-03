
# first we list the students in an array
students = [
  "Dr. Hannibal Lecter", 
  "Darth Vader", 
  "Nurse Ratched", 
  "Michale Corleone", 
  "Alex DeLarge", 
  "The Wicked Witch of the West",   
  "Terminator", 
  "Freddy Kreuger", 
  "The Joker", 
  "Joffrey Baratheon", 
  "Norman Bates"
]
student_count = students.length
# define methods to print student names

def print_header
  puts "The students of the Villains Academy"
  puts "-----------------------"
end

def print(names)
  names.each do |name|
    puts name
  end
end

def print_footer(names)  
  puts "Overall we have #{names.count} great students."
end
# call the methods
print_header
print(students)
print_footer(students)

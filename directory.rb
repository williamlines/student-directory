
# first we list the students in an array
students = [
  ["Dr. Hannibal Lecter", :november], 
  ["Darth Vader", :november], 
  ["Nurse Ratched", :november], 
  ["Michale Corleone", :november], 
  ["Alex DeLarge", :november], 
  ["The Wicked Witch of the West", :november], 
  ["Terminator", :november], 
  ["Freddy Kreuger", :november], 
  ["The Joker", :november], 
  ["Joffrey Baratheon", :november], 
  ["Norman Bates", :novmeber]
]
student_count = students.length
# define methods to print student names

def print_header
  puts "The students of the Villains Academy"
  puts "-----------------------"
end

def print(names)
  names.each do |name|
    puts "#{name[0]} (#{name[1]} cohort)"
  end
end

def print_footer(names)  
  puts "Overall we have #{names.count} great students."
end
# call the methods
print_header
print(students)
print_footer(students)

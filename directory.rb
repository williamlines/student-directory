
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
# we print the students names plus an intro
puts "The students of the Villains Academy"
puts "-----------------------"
students.each do |name|
  puts name
end
# now print the student count
puts "Overall we have #{student_count} great students."

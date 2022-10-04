@students = []
def interactive_menu
  loop do 
    print_menu
    process(gets.chomp)
  end
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "3"
      save_students
    when "4"
      load_students
    when "9"
      exit # close the program
    else 
      puts "I didn't understand, try again"
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the lost of students from students.csv"
  puts "9. Exit"
end

def show_students
  print_header
  print_student_list
  print_footer(@students)
end

def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def load_students
  file =File.open("students.csv", "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(",")
      @students << {name: name, cohort: cohort.to_sym}
  end
  file.close
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, hit return twice"
  # get the first name
  name = gets.chomp
  # while name is not empty repeat this code (ends loop on empty input)
  while !name.empty? do
    # add student hash to array
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    # get another name
    name = gets.chomp
  end
  @students
end
# define methods to print student names

def print_header
  puts "The students of the Villains Academy"
  puts "-----------------------"
end

def print_student_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)  
  puts "Overall we have #{names.count} great students."
end
# call the methods
interactive_menu

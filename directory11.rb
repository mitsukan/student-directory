def input_students
  # create an empty array
  students = []
  
  while students.length == 0
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
  
    # get the first name
    name = gets.chomp
    # while the name is not empty, repeat this code
    while !name.empty? do
      # add the student hash to the array
      students << {name: :name, cohort: :november}
      puts "Now we have #{students.count} students"
      # get another name from the user
      name = gets.chomp
    end
  end
  # return the array of students
  students
end

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end



def interactive_menu
  students = []
  loop do
  #1 print menu and ask the user what to do
    puts "1, Input the students"
    puts "2. Show the students"
    puts "9. Exit"
  #2 read the input and save it into a local_variable
  selection = gets.chomp
  #3 do what the user has asked
    case selection
      when "1"
        students = input_students
      when "2"
        print_header
        print(students)
        print_footer(students)
      when "9"
        exit
      else
        puts "I don't know what you meant, try again"
    end
  end
end

interactive_menu

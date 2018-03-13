def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    
    students = []         #create an empty array
    
    name = gets.chomp         #ask for user input
    
    while !name.empty? do      #while the user input is not empty
        students << {name: name, cohort: :november}        #push hash into the array
        puts "Now we have #{students.count} students"
        
        name = gets.chomp        #as the first request is not in the while loop, we'll loop it here.
    end
    
    students         #return the array
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------------"
end

def print(students)
  indexcount = 0
  while indexcount < students.length
    puts "#{students[indexcount][:name]} (#{students[indexcount][:cohort]} cohort)"
    indexcount += 1
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def print_letter(students)
  puts "Please enter a letter you want to filter:"
  letter = gets.chomp
    students.each_with_index do |student, index|
      if student[:name][0] == letter
        puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)"
      end
  end
end

def print_12orless(students)
  puts "Printing students with names that are 12 characters or less:"
  students.each_with_index do |student, index|
    if student[:name].length < 12
      puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end


students = input_students          #assigning the method input_students to a variable
print_header
print(students)                    #calling the saved variable on our defined methods above
print_footer(students)
puts
print_letter(students)
puts
print_12orless(students)
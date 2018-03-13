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
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end



students = input_students          #assigning the method input_students to a variable
print_header
print(students)                    #calling the saved variable on our defined methods above
print_footer(students)


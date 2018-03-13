def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice when I'm asking for a student."
    
    students = []         #create an empty array
    
    name = gets.strip!      #ask for user input
    
    while !name.empty? do      #while the user input is not empty
      puts "What cohort does #{name} belong in?"
      cohort = gets.chomp
      puts "What is #{name}'s favorite hobby?"
      hobby = gets.chomp
      students << {name: name, cohort: cohort, hobby: hobby}        #push hash into the array
      
      if students.length == 1
        puts "Now we have #{students.count} student"
      else
        puts "Now we have #{students.count} students"
      end
        
      puts "Next student?:"
      name = gets.chomp
    end
    
    students        
end

def print_header
  puts "The students of Villains Academy".center(50)
  puts "-------------------".center(50)
end

def print(students)
  indexcount = 0
  while indexcount < students.length
    puts "#{students[indexcount][:name]} (#{students[indexcount][:cohort]} cohort, favorite hobby: #{students[indexcount][:hobby]})".center(50)
    indexcount += 1
  end
end

def print_footer(names)
  if names.length > 1
    puts "Overall, we have #{names.count} great students".center(50)
  else
    puts "Overall, we have #{names.count} great student".center(50)
  end
end


def print_cohort(students)
  puts "Enter cohort to print:"
  cohortss = gets.chomp
  students.map do |student|
    if student[:cohort] == cohortss
      puts "#{student[:name]} (#{student[:cohort]} cohort, favorite hobby: #{student[:hobby]})".center(50)
    end
  end
end



students = input_students          #assigning the method input_students to a variable
print_header
print(students)     #calling the saved variable on our defined methods above
puts
print_cohort(students)
print_footer(students)

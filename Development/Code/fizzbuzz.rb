# assignment.rb

# FizzBuzz - The Programmer's Stairway to Heaven
# Define the fizzbuzz method to do the following: 10pts
  # Use the modulo % method (divisible by)
    # 2 % 2 #=> true
    # 1 % 2 #=> false
  # If a number is divisible by 3, puts "Fizz".
  # If a number is divisible by 5, puts "Buzz".
  # If a number is divisible by 3 and 5, puts "FizzBuzz"
    # Use if statements 2pts
    # Use the && operator 3pts

# Write a loop that will group the numbers from 1 through 50
# by whether they fizz, buzz, or fizzbuzz - 10pts

def fizzbuzz(number)

  if number % 3 == 0 && number % 5 == 0
  puts "Fizzbuzz"

  elsif number % 3 == 0 
  puts "Fizz"
  
  elsif number % 5 == 0
  puts "Buzz"
  
  end

end

fizzbuzz(6)
fizzbuzz(10)
fizzbuzz(15)


#part 2

grouping = 1
fizz = []
buzz = []
fbuzz = []

50.times do

  if grouping % 3 == 0 && grouping % 5 == 0
  fbuzz.push(grouping)

  elsif grouping % 3 == 0
  fizz.push(grouping)

  elsif grouping % 5 == 0
  buzz.push(grouping)

  end

  grouping += 1

end

puts fizz
puts "-------------------"
puts buzz
puts "-------------------"
puts fbuzz
puts "-------------------"



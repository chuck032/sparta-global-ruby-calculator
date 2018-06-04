include Math

# addition function
def addition (num1, num2)
  puts num1 + num2
end

# subtraction function
def subtraction (num1, num2)
  puts num1 - num2
end

# multiplication function
def multiplication (num1, num2)
  puts num1 * num2
end

# division function
def division (num1, num2)
  puts num1 / num2
end

# power function
def power (num1, num2)
  puts num1**num2
end

# square root function
def square_root (num1)
  puts sqrt(num1)
end

# Imperial BMI function
def imperial (weight, height)
  puts 703*weight/(height**2)
end

# metric BMI function
def metric (weight, height)
  puts weight/(height**2)
end

# time trip function
def time (dist, speed)
  dist / speed
end

# final cost function for trip calculator
def final_cost (speed, mpg, cost)
  if speed > 60 && mpg > speed && mpg > 0
    mpg = mpg - ((speed - 60) * 2)
    return mpg * cost
  else mpg * cost
  end
end

# start of calculator
puts "Welcome, would you like to the (1)advanced, (2)basic calculator, (3)BMI or (4)trip"
type = gets.chomp

# basic calculator
if type == "2"
  puts "Would you like to do (1)addition, (2)subtraction, (3)multiplication or (4)division"
  function = gets.chomp

  # addition
  if function == "1"
    puts "Enter the first number"
    num1 = gets.to_i
    puts "Enter the second number"
    num2 = gets.to_i
    addition(num1, num2)
  end

  # subtraction
  if function == "2"
    puts "Enter the first number"
    num1 = gets.to_i
    puts "Enter the second number"
    num2 = gets.to_i
    subtraction(num1, num2)
  end

  # multiplication
  if function == "3"
    puts "Enter the first number"
    num1 = gets.to_i
    puts "Enter the second number"
    num2 = gets.to_i
    multiplication(num1, num2)
  end

  # division
  if function == "4"
    puts "Enter the first number"
    num1 = gets.to_i
    puts "Enter the second number"
    num2 = gets.to_i
    division(num1, num2)
  end
end

# advanced calculator
if type == "1"
  puts "Would you like to do (1)power or (2)square root?"
  function = gets.chomp

  # power
  if function == "1"
    puts "Enter the first number"
    num1 = gets.to_i
    puts "Enter the power"
    num2 = gets.to_i
    power(num1, num2)
  end

  # square root
  if function == "2"
    puts "Enter the first number"
    num1 = gets.to_i
    square_root(num1)
  end
end

# BMI calculator
if type == "3"
  puts "Are you using (1)imperial or (2)metric?"
  measurement = gets.chomp

  # imperial BMI
  if measurement == "1"
    puts "Enter your weight in pounds"
    weight = gets.to_f
    puts "Enter your height in inches"
    height = gets.to_f
    imperial(weight, height)
  end

  # metric BMI
  if measurement == "2"
    puts "Enter your weight in kilograms"
    weight = gets.to_f
    puts "Enter your height in metres"
    height = gets.to_f
    metric(weight, height)
  end
end

# trip calculator
if type == "4"
  puts "Please enter the distance(miles) you are travelling"
  dist = gets.to_f
  puts "Please enter the fuel efficiency(mpg) of your travel"
  mpg = gets.to_f
  puts "Please enter the cost per gallon of your travel"
  cost = gets.to_f
  puts "Please enter the average speed(mph) of your travel"
  speed = gets.to_f
  puts "Your trip will take #{time(dist, speed)} hours and cost £#{final_cost(speed, mpg, cost)}."
end

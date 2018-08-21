class CalcEngine

  def run_calculator
    # Define all the methods requires to run each mode of the calculator
    # Basic Calculator methods
    def add_two_numbers(num1, num2)
      num1 + num2
    end

    def minus_two_numbers(num1, num2)
      num1 - num2
    end

    def multiply_two_numbers(num1, num2)
      num1 * num2
    end

    def divide_two_numbers(num1, num2)
     num1 / num2
    end
    # Advanced Calculator methods
    def power_of_two_numbers(num1, num2)
      num1 ** num2
    end

    def sqrt_of_number(num1)
      num1 ** 0.5
    end
    # BMI Calculator methods
    def metric_bmi_function(weight, height)
      result = (weight/height)/height
      "%.2f" % result
    end

    def imperial_bmi_function(weight, height)
      result = ((weight * 703)/height)/height
      "%.2f" % result
    end
    # Trip Calculator methods
    def trip_time(distance, average_speed)
      result = distance / average_speed
      "%.2f" % result
    end

    def trip_price(distance, fuel_efficiency, cost_per_gallon)
      result = (distance / fuel_efficiency) * cost_per_gallon
      "%.2f" % result
    end
    # Ask the user what calculator mode they want
    puts "What Calculator do you need?"
    puts "(b)asic, (a)dvnaced, (i)bmi or (t)rip"
    calc_choice = gets.chomp
    # if the select basic(b) run this if statement
    if calc_choice=="b"
      # Tells the user what mode they have selected
      puts "Basic Calculator"
      # Asks them to enter their first value
      puts "Enter first value"
      num1 = gets.chomp.to_f
      # Asks them to enter an operator to decide on what basic function to perform
      puts "Enter an operator","eg. +, -, * or /"
      operator = gets.chomp
      # Ask them to enter their second value
      puts "Enter second value"
      num2 = gets.chomp.to_f
      # case statement which checks which operator was selected
      case operator
        # if "+"  add the two numbers
        when "+"
          puts "------------------------"
          puts add_two_numbers(num1, num2)
        when "-"
        # if "-"  minus the two numbers
          puts "------------------------"
          puts minus_two_numbers(num1, num2)
        when "*"
        # if "*"  multiply the two numbers
          puts "------------------------"
          puts multiply_two_numbers(num1, num2)
        when "/"
        # if /+"  divide the two numbers
          puts "------------------------"
          puts divide_two_numbers(num1, num2)
        else
        # incorrect input
          puts "------------------------"
          puts "Incorrect input"
        end
    # if the select advanced(a) run this elsif statement
    elsif calc_choice=="a"
      # Tells the user what mode they are using
      puts "Advanced Calculator"
      # Ask the user if they would like to use the power(p) or square root (s) mode
      puts "Would you like the (p)ower or (s)quare root of initial input"
      operator = gets.chomp
      # case statement which checks which operator was selected
      case operator
      # if power(p) was selected
      when "p"
        puts "Enter first value"
        num1 = gets.chomp.to_f
        puts "Enter second value"
        num2 = gets.chomp.to_f
        puts "------------------------"
        puts power_of_two_numbers(num1, num2)
      when "s"
      # if square root(s) was selected
        puts "Enter first value"
        num1 = gets.chomp.to_f
        puts "------------------------"
        puts sqrt_of_number(num1)
      else
      # tell the user if the they selected the wrong input
        puts "------------------------"
        puts "Incorrect input"
      end
    # if the select advanced(a) run this elsif statement
    elsif calc_choice=="i"
      # Tells the user what mode they are using
      puts "BMI Calculator"
      # Ask the user to select international standard or american
      puts "Would you like to use (m)etric or (i)mperial"
      operator = gets.chomp
      # Check which operator was selected
      case operator
      # if "m" then work out BMI using metric units
      when "m"
        # Ask the user to enter their weight in kg
        puts "Enter your weight in kg"
        weight = gets.chomp.to_f
        puts "Enter your height in m"
        # Ask the user to enter their height in m
        height = gets.chomp.to_f
        puts "------------------------"
        # run the method to give the user their bmi
        puts metric_bmi_function(weight, height)
      # if "i" then work out the BMI using imperial units
      when "i"
        # Ask the user to enter their weight in pounds
        puts "Enter your weight in pounds"
        pounds = gets.chomp.to_f
        # Ask the user to enter their height in inches
        puts "Enter your height in inches"
        height = gets.chomp.to_f
        puts "------------------------"
        # run the method to give the user their bmi
        puts imperial_bmi_function(weight, height)
      else
        # if an incorrect value is inputed for the operator
        puts "------------------------"
        puts "Incorrect input"
      end
    # if the user selected "t" run this statement
    elsif calc_choice=="t"
      # Tells the user what mode they are using
      puts "Trip Calculator"
      # Ask the user to give the value of the distance of the trip in miles
      puts "Enter the distance of the trip in miles"
      distance = gets.chomp.to_f
      # Ask the user to give the value of their cars miles per gallon
      puts "Enter your cars MPG"
      fuel_efficiency = gets.chomp.to_f
      # Ask the user to give the value of the cost of gallons in pounds
      puts "Enter the cost of fuel per gallon in £s"
      cost_per_gallon = gets.chomp.to_f
      puts "Enter your average speed for the trip in mph"
      # Ask the user to give the value of the average speed of the whole trip
      average_speed = gets.chomp.to_f
      puts "------------------------"
      # print out the value for the time taken
      puts "The time take for the trip in hours: #{trip_time(distance, average_speed)}"
      # print out the value for the cost of the trip
      puts "The cost of the trip in £s: #{trip_price(distance, fuel_efficiency, cost_per_gallon)}"

    end
  end
end

calc = CalcEngine.new()
calc.run_calculator

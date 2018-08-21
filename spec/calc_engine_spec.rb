# https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
require 'spec_helper'

describe "Testing the calc engine" do

  before(:all) do
    # create an instance of a class
    @calc = CalcEngine.new()
  end
  # test for adding two numbers
  it "Should add two numbers together" do
    expect(@calc.add_two_numbers(1.0,1.0)).to eq(2.0)
  end
  # test for subtracting two numbers
  it "Should minus two numbers together" do
    expect(@calc.minus_two_numbers(5.0,4.0)).to eq(1.0)
  end
  # test for multiplying two numbers
  it "Should multiply two numbers together" do
    expect(@calc.multiply_two_numbers(3.0,3.0)).to eq(9.0)
  end
  # test for dividing two numbers
  it "Should divide two numbers together" do
    expect(@calc.divide_two_numbers(7.0,2.0)).to eq(3.5)
  end
  # test for power of num2 for num1
  it "Should do the power of num2 for num1" do
    expect(@calc.power_of_two_numbers(2.0,3.0)).to eq(8.0)
  end
  # test for checking the square root of num1
  it "Should do the square root of num1" do
    expect(@calc.sqrt_of_number(16.0)).to eq(4.0)
  end
  # test to check if BMI calculator works for metric
  it "Should work out the BMI using weight and height in metric" do
    expect(@calc.metric_bmi_function(70.0, 1.75)).to eq("22.86")
  end
  # test to check if BMI calculator works for imperial
  it "Should work out the BMI using weight and height in imperial" do
    expect(@calc.imperial_bmi_function(155.0, 71.0)).to eq("21.62")
  end
  # test for checking the time the taken for the trip
  it "Should work out the time taken for the trip" do
    expect(@calc.trip_time(100.0, 50.0)).to eq("2.00")
  end
  # test for checking the cost of the trip
  it "Should work out the cost of the trip" do
    expect(@calc.trip_price(100, 50, 1)). to eq("2.00")
  end

end

# https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
require 'spec_helper'

describe "Testing the calc engine" do

  before(:all) do
    @calc = CalcEngine.new()
  end

  it "should add two numbers together" do
    expect(@calc.add_two_numbers(1,1)).to eq(2)
  end

  it "should minus two numbers together" do
    expect(@calc.minus_two_numbers(5,4)).to eq(1)
  end
end

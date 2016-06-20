# When done, submit this entire file to the autograder.

# Part 1

# Define a method sum(array) that takes an array of integers as an argument
# and returns the sum of its elements.
# For an empty array it should return zero.
def sum arr
  arr.reduce(0, :+)
end

def copy_array arr
  result = []
  arr.each do |item|
    result.push(item)
  end
  result
end

# Define a method max_2_sum(array) which takes an array of integers as an
# argument and returns the sum of its two largest elements.
# For an empty array it should return zero. 
# For an array with just one element, it should return that element.
def max_2_sum arr
  arr.empty? ? 0 : arr.sort {|x, y| y <=> x}.slice(0..1).reduce(:+)
end

# takes an array of integers and an additional integer, n, as arguments
# and returns true if any two elements in the array of integers sum to n. 
# sum_to_n?([], n) should return false for any value of n, by definition.
def sum_to_n? arr, n
  arr.each_with_index do |item_1, i1|
    arr.each_with_index do |item_2, i2|
      next if i1 == i2
      return true if item_1 + item_2 == n
    end
  end
  false
end

# Part 2

# takes a string representing a name and returns
# the string "Hello, " concatenated with the name.
def hello(name)
  "Hello, #{name}"
end

# takes a string and returns true if it starts with a consonant
# and false otherwise
def starts_with_consonant? s
  s =~ /^[^aeiou]/i && s =~ /^\w/
end

# takes a string and returns true if the string
# represents a binary number that is a multiple of 4.
def binary_multiple_of_4? s
  s =~ /^0*(10)*0$/
end

# Part 3
=begin
Define a class BookInStock which represents a book with an ISBN number, isbn, 
and price of the book as a floating-point number, price, as attributes. 
Run associated tests via: $ rspec -e 'getters and setters' spec/part3_spec.rb
The constructor should accept the ISBN number 
(a string, since in real life ISBN numbers can begin with zero and can include hyphens) 
as the first argument and price as second argument, and should raise ArgumentError 
(one of Ruby's built-in exception types) if the ISBN number is the empty string 
or if the price is less than or equal to zero. Include the proper getters and 
setters for these attributes. Run associated tests via: $ rspec -e 'constructor' spec/part3_spec.rb

Include a method price_as_string that returns the price of the book formatted 
with a leading dollar sign and two decimal places, that is, a price of 20 should format as "$20.00" and a price of 33.8 should format as "$33.80".
=end
class BookInStock
  attr_accessor :isbn, :price
  
  def initialize isbn, price
    raise ArgumentError if isbn == "" || price <= 0
    
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    result = "$#{price.round(2)}"
    until result =~ /\.\d\d$/ do
      result += "0"
    end
    result
  end
end

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

def second_greatest arr
  new_arr = copy_array arr
  max_index = new_arr.index(new_arr.max)
  new_arr.delete_at max_index
  return new_arr.max
end

# Define a method max_2_sum(array) which takes an array of integers as an
# argument and returns the sum of its two largest elements.
# For an empty array it should return zero. 
# For an array with just one element, it should return that element.
def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  
  max = arr.max
  second = second_greatest arr
  max + second
end

# takes an array of integers and an additional integer, n, as arguments
# and returns true if any two elements in the array of integers sum to n. 
# sum_to_n?([], n) should return false for any value of n, by definition.
def sum_to_n? arr, n
  arr.each_with_index do |item_1, i1|
    arr.each_with_index do |item_2, i2|
      return true if i1 != i2 && item_1 + item_2 == n
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

def starts_with_consonant? s
  s =~ /^[^aeiou]/i && s =~ /^\w/
end

# takes a string and returns true if the string
# represents a binary number that is a multiple of 4.
def binary_multiple_of_4? s
  s == "0" ? true : s =~ /^0*(10)+0$/
end

# Part 3

class BookInStock
# YOUR CODE HERE
end

# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr.empty?
  s = 0
  arr.each do |x|
    s += x
  end
  return s
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  arr.sort! {|a,b| b<=>a}
  
  arr[0] + arr[1]
end

def sum_to_n? arr, n
  return false if arr.length < 2
  until arr.length == 1
    a = arr.first
    arr = arr.drop(1)
    arr.each do |i|
      return true if a + i == n
    end
  end
  false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  return false if s.empty?
  return false if s =~ /^[a,e,i,o,u]/i
  return false if s !~ /^[a-z]/i
  true
end

def binary_multiple_of_4? s
  return true if s == "0"
  t = s.to_i(2)
  return true if t > 0 && t % 4 == 0
  false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty?
    raise ArgumentError if price <= 0
    
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn
  attr_accessor :price 
  
  def price_as_string
    sprintf '$%.2f', @price
  end
end

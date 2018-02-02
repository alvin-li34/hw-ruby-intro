# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.reduce(0,:+)
end

def max_2_sum arr
  if (arr.length == 0)
    return 0
  else
    sum(arr.sort.last(2))
  end
end

def sum_to_n? arr, n
  arr.combination(2).to_a.each do |a|
  if (a.reduce(0, :+) == n)
    return true
  end
end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  vowel = ['a','e','i','o','u']
  if (s.length == 0)
    return false
  elsif (!s.downcase[0].match(/^[[:alpha:]]$/))
    return false
  elsif (!vowel.include?(s.downcase[0]))
    return true
  end
end

def binary_multiple_of_4? s
  if (s !~ /^[01]/)
    return false
  elsif (s.to_i(10) % 4 == 0)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :price, :isbn
  def initialize(isbn, price)
    raise ArgumentError,"Argument is invalid" if isbn.empty? || price <= 0.0
    @price = price
    @isbn = isbn
  end
  def price_as_string
    return "$#{sprintf('%.2f',price).to_s}"
  end
end

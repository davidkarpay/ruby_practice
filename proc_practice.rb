multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

puts (1..100).to_a.select(&multiples_of_3)


multiples_of_7 = Proc.new do |n|
	n % 7 === 0
end

puts ""

puts (70..140).to_a.select(&multiples_of_7)

multiples_of_5 = Proc.new { |n| n%5 ===0 }

puts " "

puts (0..100).to_a.select(&multiples_of_5)

puts "-----------------------------------"

def greeter
    yield
end

phrase = Proc.new { puts "Hello there!" }

greeter(&phrase)

puts "------------------------------------"

hi = Proc.new { puts "Hello!" }

hi.call

puts "------------------------------------"

puts "It is also possible to convert a method to a symbol AND THEN"
puts " convert it to to a Proc:"

puts "an array of numbers:"
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts numbers_array
puts "an array of those numbers converted to strings:"
strings_array = numbers_array.map(&:to_s)
strings_array
puts strings_array

# methods that take blocks as code can take a Proc-ified symbol-ized 
# block. E.g., the method .to_s 

# Procs are defined as:
# proc = Proc.new { block }


# Code blocks are converted into objects of class Proc using the
# methods Proc.new and Kernel#proc, or by associating the block 
# with a method's block argument:

def method(arg)
	yield arg 
end

proc = Proc.new { puts "Behold, I am your Proc master!"}

puts method(proc)

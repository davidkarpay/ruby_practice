# Write your code below!

5.times do |i|
    puts "I'm a block!"
end
puts "------------------"
fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

# Add your code below!

puts doubled_fibs = fibs.collect { |n| n*2 }

puts "------------------"

def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

puts block_test { puts ">>> We're in the block!" }
# here, when we type yield, as long as we pass in a block as a param
# for the method, then the yield will throw whatever is passed
# in as the block.


def block_test2
    puts "Test"
    puts "...test..."
    yield
    puts "....test complete."
end

block_test2 {puts "TESTTESTTESTTEST"}

puts "------------------\n "

def yield_name(name)
	puts "In the method! Let's yield right... now"
	yield name
	puts "Block complete! Back in the method."
end

yield_name("David") { |name| puts "My name is #{name}."}











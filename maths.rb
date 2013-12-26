zero = 0
one = 1
two = 2
ten = 10

puts zero.zero?
puts one.zero?

puts (1..(ten.zero? ? 1 : ten)).inject(:*)
puts "\n"
puts (1..ten).inject(:*) || 1

def factorial(n)
	n > 1 ? n.downto(1).inject(:*) : 1
end

def division(x, y)
	(x/y).to_f
end

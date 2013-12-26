def a
	puts "a is being evaluated"
	return true
end

def b 
	puts "b is also being evaluated"
	return true
end

puts a || b 
puts "------"
puts a && b 


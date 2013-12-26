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

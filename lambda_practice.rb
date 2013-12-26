def lambda_demo(l)
  puts "I'm the method!"
  l.call
end

lambda_demo( lambda { puts "I'm the lambda!" })

# The method 'lambda_demo' takes an argument 'l'.
# 
# 	lambda_demo()
#
#
#
#
# Lambdas and Procs are reusable blocks of code. A block usually
# gets typed over and over each and every time it is used. This is
# repetitive and against DRY conventions. Lambdas and Procs allow
# for the reuse of those blocks. 

# The following Proc will iterate over an array; for each Integer,
# it will add it to a total.
total = 0
addUp = Proc.new { |n| total += n if n.is_a? Integer }

array = [10, 10, 10, 10, "10", "10", "10", 10]

puts (1..10)



puts crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!
puts first_half = lambda { |k, v| v < "M" }

puts a_to_m = crew.select(&first_half)


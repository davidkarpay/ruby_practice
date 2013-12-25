puts "What language do you speak?"
greeting = gets.chomp

case greeting
when "English" then puts "Hello!"
when "French" then puts "Bonjour!"
when "Chinese" then puts "Ni hao!"
when "German" then puts "Guten tag!"
when "Finnish" then puts "Haloo!"
else puts "I don't speak that language."
end

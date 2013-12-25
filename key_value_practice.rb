# make a hash of family members with names.
# write a program that allows for CRUD.

family = {
	dad:"Ken",
	mom:"Jeannette",
	twin:"Robert",
	brother:"Caleb",
}

puts "What would you like to do?"
puts " \"add\" --------- create a new member."
puts " \"update\" ------ update a family member's name."
puts " \"show\" -------- list all family members with names."
puts " \"remove\" ------ remove a family member from the list."
choice = gets.chomp.downcase

case choice
	when "add"
		puts "What type of member are they (e.g., mom, dad, brother, sister, dog, cat, etc.)?"
		member = gets.chomp.to_sym
		if family[memeber] != nil?
			puts "I'm sorry, but #{member}'s name is #{family[member]}."
		else
			puts "What is the #{member}'s name?"
			name = gets.chomp.capitalize.to_s
		end
	end

class PersonalChef
	def time
		#Hello! Happy #---day. Today is the ## of ?month. 
		puts "Hello! Happy " + Date.today.strftime("%A") + "! Today is the" + Date.today.strftime("%e").to_s + " of " + Date.today.strftime("%B") + "."
		return self
	end

  def make_toast(color)
  	if color.nil?
  		puts "How am I supposed to make colorless toast?!"
  	else
    	puts "Making your toast #{color}!"
    end
    return self
  end

  def make_milkshake(flavor)
  	puts "I don't have any #{flavor} for a #{flavor} milkshake..."
  	return self
  end

  def make_eggs(quantity) 
  	quantity.times do 
  		puts "Making an egg..."
  	end
  	puts "I'm done! I made you #{quantity} eggs."
  	return self
  end

  def gameplan(meals)
  	meals.each do
  		puts "We'll have #{meals}..."
  	end

  	all_meals = meals.join(", ")
  	puts "In summary: #{all_meals}"
  	return self
  end

  def inventory
  	produce = {bananas: 12, oranges: 14, apples: "10", chickens: 15, carrots: 12}
  	produce.each do |item, quantity|
  		puts "There are #{quantity} #{item} in stock."
  	end
  	return self
  end

  def countdown(counter)
  	puts "Starting at #{counter}..."
		gets.chomp
		puts "3..." 
		gets.chomp 
		puts "...2..."
		gets.chomp 
		puts "...1..."
		gets.chomp
		puts "Go!"
		gets.chomp
  	while counter > 0
  		puts "The counter is at #{counter}."
  		counter = counter - 1
  	end
  	return self
  end

end

class Butler
	def open_door(front_or_back)
		puts "Opening the #{front_or_back} door, sir."
		return self
	end
end

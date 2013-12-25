class Dave
 	def self.say_hello
 		puts "Hi"
 	end 
end

Dave.say_hello

animal = "cat"
def animal.say_hello
	puts "miaow"
end

animal.say_hello

class Dave
	def meth
	end
end

class Fred
	class Wilma
		def method
		end
	end
end

def outer_method  #this is still the current class.
end

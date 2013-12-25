# Objects

# State        | data
# + Behavior   | methods
# ------------ |
# Object       | 

# Self 
#
# always references the current object
# current object = default receiver on method calls
# if method called and no explicit receiver,
# Ruby will always look in the object referenced by 
# self for that method
#
# self is where instance variables are found
# @var ==> looks in obj referenced by self for that
# instance variable
#
# self is the default, unless otherwise stated
#

class Silly
	def method_one
		@var = 99
		method_two  # no receiver? Default is self
		# Ruby stays in the same obj instance, go to
		# its class and look up method_two. Since
		# self has not changed, Ruby executes the 
		# method.
	end
	def method_two
		puts "@var is #{@var}."
	end
end

s = Silly.new
s.method_two
s.method_one
s.method_two
# instance variables always get stored in self
#
# @var is associated with a particular instance
# of class Silly

# object.do_something(param)

# * Switch self to receiver (object)
#
# * Look up method in that object's class
#
# * Invoke method.

animal = "cat"
puts animal.upcase()
puts animal.frozen?

# 	  				value:"cat"
# animal -->  -----------
# 						class * -----> String 
# 													super: * ------
# 													class:        |
# 													---------     |
#   												downcase()    |
#  													upcase()      |
# 																				|
#       																	|
#           Object <-----------------------
# 					super:
#  					class:
#  					---------
#   				dup()
#  					frozen?()

def animal.speak
	puts "miaow"
end

animal.speak

# Once new methods are written for an object,
# Ruby creates a ghost (anonymous) class, and stores
# the methods there. If another method is used that
# is not in that anonymous class, then it goes to the
# super class (e.g., String)

# 	  				value:"cat"
# animal -->  -----------
# 						class * --->-> String 
# 											|		 super: * ------
# 											|		 class:        |
# 	anonymous<-----------		 ---------     |
#   super:									 downcase()    |
#  	class:									 upcase()      |
# 	------									 							 |
#   speak()    							 							 |
#           Object <-----------------------
# 					super:
#  					class:
#  					---------
#   				dup()
#  					frozen?()

puts "Before class definition, self = #{self}" #[*]

var = class Dave
	
	puts "Inside class definition, self = #{self}" #[*]

	def say_hello
		puts "Hi"
	end

	self 
end

puts "After class defition, self = #{self}" #[*]
d = var.new
d.say_hello
puts var # [*]


 puts defined?(Dave)

# ==> constant
# a constant is a reference to an object.
# What kind of object is it referencing?

# puts Dave.class

# ==> Class

#my_class = Dave
#d = myclass.new
#d.say_hello

# [*] Class definitions in Ruby are active code!

# Two things change self in Ruby
# (1) a method call with an explicit receiver
# 		d.say_hello
#   		self = what's in d? myclass. what's myclass? Dave.
# (2) a class definition 
#        Before class definition, self = main (top level obj)
# 			 Inside class definition, self = Dave
#  			 After class definition, self = main (top level obj)

# FYI, classes do not have to have a name. In fact,
# class do not have a name until you assign them
# a constant.
puts "\nFYI\n"

puts "cls = Class.new"
cls = Class.new
puts "puts cls"
puts"=>"; puts cls
# => #<Class:0x007f83f10acc20>

Dave = cls 
puts cls
# => Dave
d.say_hello
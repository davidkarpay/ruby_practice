class Product
	attr_accessor :name, :price

	def initialize(attrs={})
		attrs.each do |attr, value|
			send("#{attr}=", value)
		end
	end

	def self.products
		@products ||= []
	end

	def self.add(attrs)
		products << new(attrs)
	end

	def self.find(name)
		products.detect{|p| p.name == name }
	end
end
t
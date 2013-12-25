class Catalog
	def products
		@products ||= []
	end

	def add(products)
		products << product
	end
end

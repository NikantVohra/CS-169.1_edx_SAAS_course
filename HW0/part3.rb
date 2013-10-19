class BookInStock
	
	def initialize(isbn,price)
		raise ArgumentError, 'ISBN cannot be empty' if isbn == ""
		raise ArgumentError, 'Price should be positive' if price <= 0
		@isbn = isbn
		@price = price
	end
	attr_accessor :isbn
	attr_accessor :price
	def price_as_string
		price = @price.to_s	
		dot_position = price.index(".")
		if dot_position == nil
			return "$" + price + ".00"
		elsif dot_position == price.length - 2
			return "$" + price + "0"
		else
			return "$" + price
		end	
	end
end


b = BookInStock.new(1,20)
puts b.price_as_string



class BookInStock

	#these methods are shortcuts for creating getter and setter methods 
	attr_accessor :price
	attr_reader :price, :isbn

	def initialize (isbn, price)
		@isbn = isbn
		@price = Float(price)
	end

	#these methods are redundant if you use the attr_x methods to auto create getters or setters
	# def price 
	# 	@price 
	# end 
	# def price=(new_price)
	# 	@price = new_price
	# end

	# this is a "virtual" attribute, you're not really changing the state 
	# you're just using it to do a calculation. Note there's no @ sign
	def price_in_sterling 
		price * 1.5
	end

end 

class CSVReader 

	def initialize 
		@books_in_stock = [ ];
	end

end


book = BookInStock.new("isbn1","99.99");
p book 
book.price = book.price * 0.6
p book 
puts book.price_in_sterling
p book
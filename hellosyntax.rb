# -- Conventions --
# Local variables, method parameters, and method names should all start with a lowercase letter2 or an underscore. 
# Global variables are prefixed with a dollar sign ($), and instance variables begin with an “at” sign (@). 
# Class variables start with two “at” signs (@@).
# Finally, class names, module names, and constants must start with an uppercase letter. 

puts "-----------------Defining a method in Ruby-----------------"


	def string_variable_in_method(param1)
		puts "example of string variable #{param1}"
	end 

	string_variable_in_method("I am a parameter")


puts "\n\n\n\n-----------------Arrays in Ruby-----------------"

# -- Arrays in Ruby -- 
	a = ["Barry","Ronaldo","Bale"]

	if a.empty?
		puts "empty!"
	else
		puts "This array is not empty! #{a}"
	end

	if a.include?("Barry")
		puts "Testing the include? function and it does include:" + a[0]
	end 

	recep = ["Euro2016","1.1", {name: false}];
	puts recep[2]
	puts recep[1]

puts "\n\n\n\n-----------------Hashtables in Ruby-----------------"

# -- Hashtable sin Ruby -- 
	exampleHT = {}
	exampleHT["first"] ="Hello"
	#puts exampleHT

	exampleHT = {
		"second" => "goodbye", 
		"third" => "farvel"
	}
	
	#nill is the null of C. If something doesn't exist then it's nil
	if exampleHT[3] == nil
		puts "index 3 doesn't exisit!"
	end 

puts "\n\n\n\n-----------------Symbols in Ruby-----------------"
# Symbols are simply constant names that you don’t have to predeclare and that are 
# guaranteed to be unique. A symbol literal starts with a colon and is normally followed by some kind of name:

# Here are three different ways to populate a hashtable. Note you can use keys. 
# The third method still uses keys, but they jacked the popular javascript notation to confuse you. 

	exampleHT1 = {
		"second" => "goodbye", 
		"third" => "farvel"
	}

	exampleHT2 = {
		:second => "goodbye",
		:third => "farvel"
	};
	exampleHT3 = {
		second: "goodbye",
		third: "farvel"
	};
	



puts "\n\n\n\n-----------------Defining a method in Ruby-----------------"

	def test (param1, param2)
		puts param1 
		puts param2
	end 

	test("hello","world")


puts "\n\n\n\n-----Exploring all the different ways you can call a method which accepts an object ---------"
# Exploring all the different ways you can call a method which accepts an object
# Note how you can define objects as the last parameter (BMW1-4) instead of passing in finished objects.
# Note all the different ways you can define objects (aka hashes)


	car1 = {:make => "BMW-original"}
	car2 = {make: "Mercedes"}
	
	car3 = {};
	car3[:make] = "Audi"


	test car1, car2
	test(car1, car2)
	test(car1, car3)

	puts "\n"

	test(car1, {:make => "BMW1"}) #with brackets, curly braces and regular symbol notation 
	test car1, {:make => "BMW2"} # no brackets 
	test car1, :make => "BMW3" # no brackets and no braces 

	test car1, make: "BMW4" #same as above, but using the new symbol notation jacked from javascript 
	test car1, {make: "BMW5"}
	test(car1, {make: "BMW6"})


	#validates(:name, {:presence=>true})
	#validates(:name, {presence: true})
	#validates :name, presence: true





puts "\n\n\n\n-----------------Blocks in Ruby-----------------"
# -- Blocks -- 
# Are function pointers. You can define some code and variables (with values?), which you pass into a method. 
# Perhaps closures are a similar concept  

	def example_of_blocks
		puts "Beginning of the method"
		yield #example of the block code being invoked inside the method 
		yield #invoking it twice as an example 
		puts "Method finishing" 
	end 
	example_of_blocks() {puts "invoking block code passed to method"}

#--------


	exampleHT2.each {
		|i| 
		puts i.to_s + " scores goals - example of blocks as an iterator"
	}

	exampleHT2.each do |key,value|
		puts key.to_s + " example of blocks iterator " + value.to_s 
	end 





















puts "test";
puts "----------------------------------"
a = ["Barry","Ronaldo","Bale"]

print a;
puts a;

if a.empty?
	puts "empty!"
else
	puts "not empty"
end

if a.include?("Barry")
	puts "Testing the include? function: " + a[0]
end 

puts "----------------------------------"
a.shuffle
puts a.to_s + " testing shuffle function, note it shuffles a copy"

a.shuffle!
puts a.to_s + " testing shuffle! function, note it doesn't shuffle a copy, if shuffles the actual array held at that memory address"


print a[0..1].to_s + "example of ranges, where you select a sub portion of the array\n"

puts "Now an example of 'blocks', it seems like an iterator which can go through a data structure and perform operations on each item"
a.each {|i| puts i + " sucks"}

puts "----------------------------------"
puts "let's look at a hashtable in ruby"
exampleHT = {}
exampleHT["first"] ="Hello"
puts exampleHT

exampleHT = {"second" => "goodbye", "third" => "farvel"}
puts exampleHT

puts "----------------------------------"
puts "lets look at symbols which look like strings prefixed with a colon and seem to be more efficient ways to use hashtable keys"
exampleHT2 = {:second=>"goodbye",:third=>"farvel"};
puts exampleHT2[:second] 
print "look at how we use symbols to access hashtable values\n"


puts "----------------------------------"
puts "example of how you can deep compare hash tables??"
if exampleHT == exampleHT2
	puts "true!"
else
	puts "false"
end

puts "----------------------------------"
puts "lets look through how you can iterate through a hashtable "
exampleHT2.each do |key,value|
	puts key.to_s + " " + value.to_s 
end 


puts "----------------------------------"
puts "Lets look at classes"
puts "notice the usage of the == without the if statement and the function returns true or false,"
puts "ruby also has the concept of implicity return, it will return the last statement by default"

class Word < String
	def palindrome? (string)
		string == string.reverse
	end
end 

aWord = Word.new 
puts aWord.palindrome?("level")

puts "----------------------------------"
puts "Lets look at your own class"

require "./class_example"

exampleUser = User.new
puts exampleUser;
exampleUser.name = "Stantheman";
exampleUser.email = "Stan@test.com";
puts exampleUser;
puts exampleUser.name;
puts exampleUser.formatted_email;
# exampleUser.hello = "test"























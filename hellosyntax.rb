puts "test";

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

a.shuffle
puts a.to_s + " testing shuffle function, note it shuffles a copy"

a.shuffle!
puts a.to_s + " testing shuffle! function, note it doesn't shuffle a copy, if shuffles the actual array held at that memory address"


print a[0..1].to_s + "example of ranges, where you select a sub portion of the array\n"

puts "Now an example of 'blocks', it seems like an iterator which can go through a data structure and perform operations on each item"
a.each {|i| puts i + " sucks"}
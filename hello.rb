puts "Hello, world!"

=begin
#puts prints each put on a seperate line
puts "I"
puts "like"
puts "pie."

#print prints each together with no spaces on one line
print "Cookies"
print "are"
print "good"
print "too."

puts " "

operation_result = 12 * 34
print "Operation result is "
puts operation_result

puts "What's your name?"
name = gets.chomp
puts "Hello, #{name}." 

#NB if not given a number but given a letter, number was assumed to be 0; Rounded down for decimals. 
puts "Give me a number"
first_number = gets.chomp.to_i
puts "Give me another number"
second_number = gets.chomp.to_i
puts "#{first_number} x #{second_number} = #{first_number * second_number}"

puts "What's your name?"
name = gets.chomp
IO.write('name.txt', name)

flavours = "chocolate, mint, strawberry, vanilla, caramel, chili"
flavours_array = flavours.split(", ")
puts flavours_array

my_array = []

my_array << "A"
my_array.push "B"
my_array.push "C"

puts my_array

my_array.delete_at 2

puts my_array

numbers = [-1,4,6,2,4,7,12,9,12].sort
print numbers

letters = ["g", "G", "e", "n", "w", "a", "5"].sort
print letters

my_hash = {}

my_hash["AST"] = "Asturias"
my_hash["GAL"] = "Galicia"

puts my_hash.has_key?("AST")
puts my_hash.select { |key, value| key.include?("G") }

puts "what is this?".class
puts 3.class
puts [1,2,3].class

numbers = [1,2,3]
for element in numbers
  puts "-> #{element}"
end
=end




















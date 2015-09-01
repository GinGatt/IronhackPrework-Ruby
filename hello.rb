puts "Hello, world!"

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

=begin
for i in 1..100
	if i%3 == 0 && i%5 == 0
		puts "FizzBuzz"
	elsif i%5 == 0
		puts "Buzz"
	elsif i%3 == 0
		puts "Fizz"
	else
		puts "#{i}"
	end
end
=end

numbers = 1..100
numbers.each do |num|
	if num%3 == 0 && num%5 == 0
		puts "FizzBuzz"
	elsif num%5 == 0
		puts "Buzz"
	elsif num%3 == 0
		puts "Fizz"
	else
		puts "#{num}"
	end
end

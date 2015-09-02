=begin
#iteration1 (Fizz @ multiples 3, Buzz @ multiples of 5)
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


#iteration 2 (method 2 for same goal)
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
=end

#iteration 3 (+ Bang if number starts with 1)
numbers = 1..100
numbers.each do |num|
	if num.to_s[1]=="1" && num%3 == 0 && num%5 == 0
		puts "FizzBuzzBang"
	elsif num%3 == 0 && num%5 == 0
		puts "FizzBuzz"
	elsif num%3 == 0 && num.to_s[0]=="1"
		puts "FizzBang"
	elsif num%5 == 0 && num.to_s[0]=="1"
		puts "BuzzBang"
	elsif num%5 == 0
		puts "Buzz"
	elsif num%3 == 0
		puts "Fizz"
	elsif num.to_s[0]=="1"
		puts "Bang"
	else
		puts "#{num}"
	end
end




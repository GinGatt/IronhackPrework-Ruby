=begin
#first iteration word -> shift back 1; didn't keep case or punct
def solve_cipher(input)
	#remove punctuation/any non alphabetical characters
	#remove all possible Uppercase
	no_punct = input.gsub(/0-9a-z/i, ' ')
	lower = no_punct.downcase
	
	message = []
	i=0
	while i < lower.length
		if ((lower[i].ord-96)%26 == 1)
			message.push('z')
		else
			message.push((lower[i].ord - 1).chr) 
		end
		i += 1
	end
	hidden = message.join
	puts hidden
end

#second iteration -> variable shifts; kept case
def solve_cipher(input, shift)
	#split sentence into individual letters + spaces
	word_array = input.split(//)

	message = []
	i=0
	while i < word_array.length
		num = word_array[i].ord
		if (num>=65 && num <=90) #is upper
			num = ((num - 65 + shift)%26) + 65
			new_letter = num.chr
			message.push(new_letter) 
		elsif (num>=97 && num<=122) #is lower
			num = ((num - 97 + shift)%26) +97
			new_letter = num.chr
			message.push(new_letter)
		else
			message.push(word_array[i])
		end
		i += 1
	end
	message = message.join
	puts message
end
#congrats on your real name being Donald Duck...
=end

#third iteration which makes the default shift = -3
def solve_cipher(input, shift)
	#split sentence into individual letters + spaces
	word_array = input.split(//)

	message = []
	i=0
	while i < word_array.length
		num = word_array[i].ord
		if (num>=65 && num <=90) #is upper
			num = ((num - 65 + shift)%26) + 65
			new_letter = num.chr
			message.push(new_letter) 
		elsif (num>=97 && num<=122) #is lower
			num = ((num - 97 + shift)%26) +97
			new_letter = num.chr
			message.push(new_letter)
		else
			message.push(word_array[i])
		end
		i += 1
	end
	message = message.join
	puts message
end

puts "Give me a phrase - and maybe a shift too! (input1, input2)"
phrase, shift = gets.chomp.split(',', 2)

if shift
	shift = shift.to_i
else
	shift = -3
end

solve_cipher(phrase, shift)


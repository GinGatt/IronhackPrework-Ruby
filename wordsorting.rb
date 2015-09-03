#Receives UI of a sentence, returns words sorted alphabetically

def custom_sort(string)
	#remove punctuation 
	no_punct = string.gsub(/[^0-9a-z]/i, ' ')

	#split sentence string into an array based on whitespace char
	sent_array = no_punct.split(/\s/)

	#sorting loop to compare each element in array, so cap doesn't matter
	i=1
	while i < sent_array.length
		if sent_array[i].upcase < sent_array[(i-1)].upcase
			#add elem[(i-1)] to end of array
			sent_array.push(sent_array[(i-1)])
			#remove the original instance 
			sent_array.delete_at(i-1)
		end
		i += 1
	end
	print sent_array
end

=begin 
#previous sorting in which capitalization will matter
def sentence_alphabatizer(sentence)
	no_punct = sentence.gsub(/[^0-9a-z]/i, ' ')
	sentence_array = no_punct.split(' ')
	sentence_sorted = sentence_array.sort
	puts sentence_sorted
end
=end

puts "Give me a sentence!"
sentence = gets.chomp
custom_sort(sentence)
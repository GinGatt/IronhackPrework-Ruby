=begin
#plain sorting function in which capitalization will matter
def sentence_alphabatizer(sentence)
	no_punct = sentence.gsub(/[^0-9a-z]/i, ' ')
	sentence_array = no_punct.split(' ')
	sentence_sorted = sentence_array.sort
	puts sentence_sorted
end

#Second Sorting function that disregards capitalization
#Inefficient; n!
def custom_sort(string)
	#remove punctuation 
	no_punct = string.gsub(/[^0-9a-z]/i, ' ')

	#split sentence string into an array based on whitespace char
	sent_array = no_punct.split(/\s/)

	new_array = []
	#sorting loop to compare each element in array, so cap doesn't matter
	while sent_array.length > 0
		#set arbitrary minimum for comparison's sake
		minimum = sent_array[0]
		for elem in sent_array
			if elem.upcase <= minimum.upcase
				minimum = elem
			end
		end
		#add elem[i] to end of new_array
		new_array << minimum
		#remove the original instance 
		sent_array.delete(minimum)
	end
	print new_array
end
=end

#Third sorting function that attempts a bubble sort method
#n-1?
def custom_sort(string)
	#remove punctuation
	#split sentence string into an array based on whitespace char
	no_punct = string.gsub(/[^0-9a-z]/i, ' ')
	sent_array = no_punct.split(/\s/)
	
	i=0
	while i < sent_array.length
		j=1
		while j < sent_array.length
			if sent_array[j].upcase <= sent_array[(j-1)].upcase
				sent_array.insert(j-1, sent_array[j])
				sent_array.delete_at(j+1)
			end
			j += 1
		end
		i += 1
	end
	print sent_array
end

puts "Give me a sentence!"
sentence = gets.chomp
custom_sort(sentence)
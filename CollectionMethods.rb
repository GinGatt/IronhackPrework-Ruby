#Exercise:each
class Home
	attr_accessor(:name, :city, :capacity, :price)
	def initialize(name, city, capacity, price)
	    @name = name
	    @city = city
	    @capacity = capacity
	    @price = price
	end
	def city
   		city = @city
   	end
end

homes = [
	Home.new("Nizar's place", "San Juan", 2, 42),
	Home.new("Fernando's place", "Seville", 5, 47),
	Home.new("Josh's place", "Pittsburgh", 3, 41),
	Home.new("Gonzalo's place", "Málaga", 2, 45),
	Home.new("Ariel's place", "San Juan", 4, 49),
	Home.new("Joe's place", "San Diego", 8, 70),
	Home.new("Mary's place", "Boston", 2, 50),
	Home.new("Kate's place", "Dallas", 4, 60),
	Home.new("David's place", "Richmond", 3, 65),
	Home.new("Gin's place", "Jupiter", 2, 80),
]
=begin
homes.each{ |hm| 
	puts "#{hm.name}'s place in #{hm.city} \n Price: $#{hm.price} a night"}

#Exercise:reduce
total_capacities = homes.reduce(0.0) do |sum, hm|
	sum + hm.capacity
end

puts "The average capacity is:"
puts total_capacities/homes.length
=end

#Iteration2-sorting
def sort(homes, category, order)
	
	sorted_homes = homes.sort do |hm1, hm2|
		if (order == "LG" || order == nil) 
			hm1.send(category.to_sym) <=> hm2.send(category.to_sym)
		elsif order == "GL"
			hm2.send(category.to_sym) <=> hm1.send(category.to_sym)
		else
			puts("Give either 'LG' for least to greatest or 'GL' for greatest to least.") 
		end
	 end
end

#call user input (name, city, capacity, price)
puts "By what category would you like to sort the information by?(Type name, city, capacity, price)"
cat = gets.downcase.chomp
puts "Would you like this sorted least to greatest or greatest to least? (Type LG or GL)"
order = gets.chomp


sorted_homes = sort(homes, cat, order)
#print results
sorted_homes.each{ |hm| 
	puts "#{hm.name}'s place in #{hm.city} \n Price: $#{hm.price} a night Capacity: #{hm.capacity}"}

#filter by city
puts "Would you like to sort by city?(y or n)"
input = gets.downcase.chomp

if(input == "y")
	puts "To what city would you like to travel?(San Juan, Seville, Pittsburgh, Málaga, San Diego, Boston, Dallas, Richmond, Jupiter)"
	city = gets.downcase.chomp
	city_homes = homes.select do |hm|
		hm.city.downcase == city
	end
	city_homes.each do |hm|
		puts"#{hm.name}| #{hm.city}| #{hm.price}| #{hm.capacity}"
	end
elsif(input == "n")
	puts "Everywhere is an adventure!"
else
	puts "Only 'y' and 'n' are valid inputs."
end

#Average-Iteration4
total_price = homes.reduce(0.0) do |sum, hm|
	sum + hm.price
end
average_price = total_price/homes.length
puts "The average price per night is #{average_price}"

#Name Own Price - Iteration5
puts "Name your own price/night(ex 70)"
user_price = gets.chomp
match = homes.find do |hm|
	hm.price == user_price.to_i()
end
if(match)
	puts match
else
	close_match = sorted_homes.min { |a, b| (a.price).abs <=> (b.price).abs }
	puts "No exact match. Here's similar property #{close_match.name}| #{close_match.city}| $#{close_match.price}| Capacity: #{close_match.capacity}."
end	










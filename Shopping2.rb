class Cart
  attr_reader :total_items
  def initialize
    @total_items = []
  end
  def add_item(item)
  	@total_items.push(item)
  end
  def checkout
  	@total_cost = 0
  	@total_items.each do |item|
     @total_cost += item.price
    end
    #More than 5 items, 10% off discount
    if @total_items.length > 5
    	@total_cost = 0.9 * @total_cost
    end
    puts "Your total today is #{@total_cost} euros"
  end
end

class Item
  def initialize(name, price)
    @price = price
    @name = name
  end
  def price
  	@price = @price
  end
end

class Houseware < Item
	def price
		#items over 100, receive 5% discount
		if @price > 100
			@price = @price * 0.95
		end
	end
end
class Fruit < Item
	def price
		#10% discount on weekend
		require "date"
		today = DateTime.now
		if today.saturday? || today.sunday?
			@price = 0.9 * @price
		end
	end
end

banana = Fruit.new("Banana", 10)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum = Houseware.new("Vacuum Cleaner", 150)
anchovies = Item.new("Anchovies", 2)

joshs_cart = Cart.new
joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.add_item(vacuum)
joshs_cart.add_item(oj)
joshs_cart.add_item(oj)
joshs_cart.add_item(oj)
joshs_cart.checkout


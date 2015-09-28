#Iteration 1 + 2 + 3 + 4
class Item
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
  def price
    @price = @price
  end
end



orange = Item.new("orange", 2)
banana = Item.new("banana", 3)
apple = Item.new("apple", 1)
watermelon = Item.new("watermelon", 6)

$wp = watermelon.price
$ap = apple.price

class Cart
  attr_reader :total_items
  def initialize
    @total_items = []
  end
  def add_item(item)
    @total_items.push(item)
  end
  def calculate_total
    @total_cost = 0
    @total_items.each do |item|
     @total_cost += item.price
    end
    puts "Your total today is #{@total_cost} euros"
  end

  def discount
    #weekend watermelon 10%
    require "date"
    today = DateTime.now

    if today.saturday? || today.sunday?
      @num_watermelons = 0
      i = 0
      while i < @total_items.length
        if @total_items[i].name == "watermelon"
          @num_watermelons += 1
        end
        i += 1
      end
      #puts @num_watermelons

      @total_cost = @total_cost - @num_watermelons * $wp * 0.10
    end

    #apples discount
    @num_apples = 0
    @total_items.each do |item|
      if item.name == "apple"
        @num_apples +=1
      end
    end

    puts @num_apples
    @total_cost = @total_cost - (@num_apples* $ap) + ((@num_apples/2).floor)* $ap + (@num_apples%2)* $ap

    #num items discount
    if @total_items.length > 5
      @total_cost = 0.95*@total_cost
    end

    #total > $100 discount
    if @total_cost > 100 #change to 15 for testing
      @total_cost = @total_cost-10
    end

    puts "Your discounted total is #{@total_cost}"
  end
end


my_cart = Cart.new
my_cart.add_item(orange)
my_cart.add_item(banana)
my_cart.add_item(apple)
my_cart.add_item(apple)
my_cart.add_item(apple)
my_cart.add_item(watermelon)
my_cart.add_item(watermelon)
my_cart.add_item(orange)

my_cart.calculate_total
my_cart.discount


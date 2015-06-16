


class Items

  def initialize(name, price)
    @name = name
    @price = price
  end

  def describe_price
    puts "This #{@name} costs €#{@price}"
  end
end
class Cart < Items
  @@total = 0

  def self.total
    return @@total
  end
  def add_to_cart
     
    @@total = @@total + 1
  end

	def discount
		if name == vacuum_cleaner
			vacuum_cleaner.price * 0.95
		if @@total >= 5
			subtotal * 0.9
		if date.wday <= 5
			bananas.price * 0.9
	end
end


Banana = Items.new "Banana", 10
Orange_Juice = Items.new "Orange Juice", 10
Rice = Items.new "Rice", 10
Vacuum_cleaner = Items.new "Vacuum Cleaner", 150
Anchovies = Items.new "Anchovies", 2

vacuum_cleaner.discount
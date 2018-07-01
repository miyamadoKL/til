# About inheritance
class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end
end

class Figure < Product
  def initialize(name, price)
    super
  end
end

dvd = DVD.new('Blade Runner', 1500, 117)
puts dvd.name
puts dvd.running_time

gundam = Figure.new('Gundam Deathscythe', 980)
puts gundam.name

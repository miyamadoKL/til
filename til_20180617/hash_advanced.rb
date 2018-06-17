def buy_burger(menu, options = {})
  drink = options[:drink]
  potato = options[:potato]
  p drink #=> true
  p potato #=> true
end

buy_burger('cheese', drink: true, potato: true)

currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
p currencies.keys #=> [:japan, :us, :india]
p currencies.values #=> ["yen", "dollar", "rupee"]

currencies2 = { italy: 'euro', **currencies }
p currencies2 #=> {:italy=>"euro", :japan=>"yen", :us=>"dollar", :india=>"rupee"}

currencies3 = { uk: 'pond' }.merge(currencies2)
p currencies3 #=> {:uk=>"pond", :italy=>"euro", :japan=>"yen", :us=>"dollar", :india=>"rupee"}

currencies4 = currencies3.to_a
p currencies4 #=> [[:uk, "pond"], [:italy, "euro"], [:japan, "yen"], [:us, "dollar"], [:india, "rupee"]]

p currencies4.to_h == Hash[currencies4] #=> true

h = {}
p h[:foo] #=> nil

# Creating Hash with a initial value
h = Hash.new('hello')

a = h[:foo]
puts a #=> hello

b = h[:bar]
puts b #=> hello

# a is the same object as b
p a.equal?(b) #=> true

# Bang method changes both a and b
a.upcase!
puts a #=> HELLO
puts b #=> HELLO

# Hash h remains empty
puts h #=> {}

# Creating Hash with a block
h = Hash.new{ 'hello' }
a = h[:foo]
b = h[:bar]

# a is not same as b
p a.equal?(b) #=> false

# Bang method changes a, but not b
a.upcase!
puts a #=> HELLO
puts b #=> hello
p h #=> {}
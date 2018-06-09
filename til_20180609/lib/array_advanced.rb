require 'set'

a = (1..5).to_a
p a[1, 3] #=> [2, 3, 4]
p a[-1] #=> 5
p a.first(3) #=> [1, 2, 3]
p a.last(2) #=> [4, 5]

a.push(6, 7)
p a

b = [8, 9]
a.concat(b)
p a

c = [10, 11]
p a + c
p a

a = [1, 2, 3]
b = [3, 4, 5]
p a | b #=> [1, 2, 3, 4, 5]
p a - b #=> [1, 2]
p a & b #=> [3]

a = Set.new([11, 12, 13])
b = Set.new([13, 14, 15])
p a | b #=> #<Set: {11, 12, 13, 14, 15}>

e, *f = 100, 200, 300
p e #=> 100
p f #=> [200, 300]

a = []
b = [2, 3]
a.push(1)
a.push(b)
p a #=> [1, [2, 3]]

a = []
b = [2, 3]
a.push(1)
a.push(*b)
p a #=> [1, 2, 3]

p %w(apple melon orange) #=> ["apple", "melon", "orange"]

p 'Ruby'.chars #=> ["R", "u", "b", "y"]
p 'Ruby,Java,Perl,PHP'.split(',')

a = Array.new(5)
p a #=> [nil, nil, nil, nil, nil]

a = Array.new(5, 0)
p a #=> [0, 0, 0, 0, 0]

a = Array.new(10) { |n| n % 3 + 1 }
p a #=> [1, 2, 3, 1, 2, 3, 1, 2, 3, 1]


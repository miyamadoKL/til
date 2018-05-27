# Variables
s = 'Hello'
n = 123 * 2
special_price = 200

p s
p n
p special_price
puts "Hello\nGoodbye"
p "Hello\nGoodbye"
puts 'Hello\nGoodbye'
puts "Hello\\nGoodbye"
puts 'He said, "Don\'t speak."'
puts "He said, \"Don't speak.\""

name = 'Alice'
puts "Hello, #{name}!"
puts 'Hello, #{name}!'

i = 10
puts "#{i} in decimal is #{i.to_s(16)} in hexadecimal."

# Comparing strings
p 'ruby' == 'ruby'    #=> true
p 'ruby' == 'Ruby'    #=> false
p 'ruby' != 'perl'    #=> true
p 'ruby' == 'ruby'    #=> false

# Numerics
p 1_000_000_000     #=>1000000000
p 20.0 / 8          #=>2.5
p 20 / 8            #=>2

n = 1
p n.to_f      #=>1.0
p n.to_f / 2  #=>0.5
n += 1
p n           #=>2
n -= 3
p n           #=>-1

# modulo
p 8 % 3     #=>2

# power
p 2 ** 3    #=>8

# Comparing numerics
p 1 < 2  #=>true
p 1 <= 2 #=>true
p 1 > 2  #=>false
p 1 >= 2 #=>false
p 1 >= 1 #=>true
p 1 == 2 #=>false
p 1 == 1 #=>true
p 1 != 2 #=>true

# Operator precedence
p 2 * 3 + 4 * 5 - 6 / 2     #=>23
p 2 * (3 + 4) * (5 - 6) / 2 #=>-7